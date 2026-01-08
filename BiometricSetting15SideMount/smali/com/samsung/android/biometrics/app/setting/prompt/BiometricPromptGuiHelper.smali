.class public abstract Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final DEBUG:Z

.field public static final DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

.field public static final DIALOG_EXTEND:Landroid/view/animation/Interpolator;


# instance fields
.field public TAG:Ljava/lang/String;

.field public final mBaseView:Landroid/view/View;

.field public mBottomBtnText:Ljava/lang/CharSequence;

.field public mBottomButton:Landroid/widget/Button;

.field public mConfirmButton:Landroid/widget/Button;

.field public final mContext:Landroid/content/Context;

.field public mDescLayout:Landroid/widget/LinearLayout;

.field public mDescriptionText:Ljava/lang/CharSequence;

.field public mDescriptionTxtView:Landroid/widget/TextView;

.field public final mDialogBottomAreaView:Landroid/view/View;

.field public final mDialogLayout:Landroid/widget/LinearLayout;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mDisplayType:I

.field public final mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public final mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mIsSupportDualDisplay:Z

.field public mLastOrientation:I

.field public final mLogoLayout:Landroid/widget/LinearLayout;

.field public final mNavigationBarHeight:I

.field public final mNegativeButtonLayout:Landroid/widget/FrameLayout;

.field public mOnModalityChangeListener:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$OnModalityChangeListener;

.field public final mPositiveButtonLayout:Landroid/widget/FrameLayout;

.field public final mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

.field public mReTryButton:Landroid/widget/Button;

.field public mScreenLandWidth:I

.field public mScreenPortraitWidth:I

.field public mScrollView:Landroid/widget/ScrollView;

.field public final mScrollViewBottomDividerView:Landroid/view/View;

.field public final mScrollViewTopDividerView:Landroid/view/View;

.field public mSubTitleTxtView:Landroid/widget/TextView;

.field public mSwitch:Landroid/widget/Switch;

.field public mTextWatcher:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;

.field public final mTitleLayout:Landroid/widget/LinearLayout;

.field public mTitleTxtView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DEBUG:Z

    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 6
    .line 7
    const v1, 0x3e6147ae    # 0.22f

    .line 8
    .line 9
    .line 10
    const/high16 v2, 0x3e800000    # 0.25f

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/high16 v4, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DIALOG_EXTEND:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v0, Landroid/view/animation/PathInterpolator;

    .line 21
    .line 22
    invoke-direct {v0, v3, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "BSS_BiometricPromptGuiHelper"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIsSupportDualDisplay:Z

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getNavigationBarHeight()I

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getScreenLandscapeWidthWithoutNavigationBar()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenLandWidth:I

    .line 37
    .line 38
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidthInPortraitMode(Landroid/content/Context;)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    .line 43
    .line 44
    const p4, 0x7f0a00f6

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    check-cast p4, Lcom/airbnb/lottie/LottieAnimationView;

    .line 52
    .line 53
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 54
    .line 55
    const p4, 0x7f0a010b

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    check-cast p4, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    const p4, 0x7f0a00fc

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    check-cast p4, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    const p4, 0x7f0a0108

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    check-cast p4, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLogoLayout:Landroid/widget/LinearLayout;

    .line 87
    .line 88
    const p4, 0x7f0a010e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    check-cast p4, Landroid/widget/LinearLayout;

    .line 96
    .line 97
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    const p4, 0x7f0a010a

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    check-cast p4, Landroid/widget/FrameLayout;

    .line 107
    .line 108
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNegativeButtonLayout:Landroid/widget/FrameLayout;

    .line 109
    .line 110
    const p4, 0x7f0a00fb

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogBottomAreaView:Landroid/view/View;

    .line 118
    .line 119
    const p4, 0x7f0a0110

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewTopDividerView:Landroid/view/View;

    .line 127
    .line 128
    const p4, 0x7f0a010f

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p4

    .line 135
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewBottomDividerView:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    if-eqz p0, :cond_7

    .line 142
    .line 143
    iget-boolean p0, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsKnoxManagedProfile:Z

    .line 144
    .line 145
    const/4 p4, 0x0

    .line 146
    if-eqz p0, :cond_1

    .line 147
    .line 148
    const v0, 0x7f0a0199

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .line 157
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    .line 158
    .line 159
    const-string v2, "com.android.settings"

    .line 160
    .line 161
    invoke-direct {v1, p1, v2}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string v2, "knox_basic"

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 181
    .line 182
    and-int/lit8 v2, v2, 0x30

    .line 183
    .line 184
    const/16 v3, 0x20

    .line 185
    .line 186
    if-ne v2, v3, :cond_0

    .line 187
    .line 188
    const/4 v2, -0x1

    .line 189
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_0
    const/high16 v2, -0x1000000

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 196
    .line 197
    .line 198
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    :cond_1
    const v0, 0x7f0a01e6

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Landroid/widget/TextView;

    .line 212
    .line 213
    iget-boolean v1, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsSecureFolder:Z

    .line 214
    .line 215
    if-eqz p0, :cond_2

    .line 216
    .line 217
    const v2, 0x7f10003c

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_2
    if-eqz v1, :cond_3

    .line 229
    .line 230
    iget-object v2, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 231
    .line 232
    const-string v3, "SECURE_FOLDER_NAME"

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    :cond_3
    :goto_1
    const v0, 0x7f070087

    .line 242
    .line 243
    .line 244
    if-nez p0, :cond_4

    .line 245
    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    :cond_4
    iget-object v1, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 249
    .line 250
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_5

    .line 255
    .line 256
    const v1, 0x7f10003b

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object v1, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 264
    .line 265
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_6

    .line 274
    .line 275
    :cond_5
    const p1, 0x7f0a00f1

    .line 276
    .line 277
    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Landroid/widget/TextView;

    .line 283
    .line 284
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 288
    .line 289
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    invoke-static {p1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 297
    .line 298
    .line 299
    :cond_6
    if-eqz p0, :cond_7

    .line 300
    .line 301
    iget-object p0, p3, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mExtraInfo:Landroid/os/Bundle;

    .line 302
    .line 303
    const-string p1, "MANAGED_PROFILE_KNOX_TWO_FACTOR"

    .line 304
    .line 305
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-eqz p0, :cond_7

    .line 310
    .line 311
    const p0, 0x7f0a00f2

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    check-cast p0, Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 324
    .line 325
    .line 326
    :cond_7
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    :cond_1
    return-void
.end method

.method public static setVisibility(Landroid/view/View;I)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static setVisibilityDelayAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0x64

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 16
    .line 17
    .line 18
    const-wide/16 v1, 0xc8

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$2;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$2;-><init>(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public cleanUpPrompt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTextWatcher:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public customizeSwitch(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 10
    .line 11
    const v4, 0x7f0a010d

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/Switch;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 21
    .line 22
    iget v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 23
    .line 24
    if-le v4, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 30
    .line 31
    new-instance v4, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda0;

    .line 32
    .line 33
    invoke-direct {v4, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 40
    .line 41
    if-ne v0, v2, :cond_1

    .line 42
    .line 43
    move v0, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, v3

    .line 46
    :goto_0
    if-nez v0, :cond_4

    .line 47
    .line 48
    if-gtz p1, :cond_2

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const v1, 0x7f070080

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/high16 v1, 0x40000000    # 2.0f

    .line 66
    .line 67
    mul-float/2addr v0, v1

    .line 68
    float-to-int v0, v0

    .line 69
    if-le p1, v0, :cond_3

    .line 70
    .line 71
    sub-int/2addr p1, v0

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setSwitchMinWidth(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/widget/Switch;->getSwitchMinWidth()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const v4, 0x7f070077

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    float-to-int v0, v0

    .line 97
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    const v5, 0x7f080063

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 107
    .line 108
    invoke-static {p1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    new-instance v7, Landroid/graphics/Canvas;

    .line 113
    .line 114
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v3, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    .line 122
    .line 123
    new-instance v4, Landroid/text/TextPaint;

    .line 124
    .line 125
    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 126
    .line 127
    .line 128
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 129
    .line 130
    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    .line 132
    .line 133
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const v9, 0x7f060042

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const v8, 0x7f070075

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 165
    .line 166
    const v8, 0x7f100032

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    int-to-float v8, p1

    .line 174
    const/high16 v9, 0x40800000    # 4.0f

    .line 175
    .line 176
    div-float/2addr v8, v9

    .line 177
    int-to-float v10, v0

    .line 178
    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    sub-float v11, v10, v11

    .line 183
    .line 184
    div-float/2addr v11, v1

    .line 185
    invoke-virtual {v7, v2, v8, v11, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    .line 187
    .line 188
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    const v8, 0x7f100031

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    mul-int/lit8 v8, p1, 0x3

    .line 198
    .line 199
    int-to-float v8, v8

    .line 200
    div-float/2addr v8, v9

    .line 201
    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    sub-float/2addr v10, v9

    .line 206
    div-float/2addr v10, v1

    .line 207
    invoke-virtual {v7, v2, v8, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 211
    .line 212
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-direct {v1, v2, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 225
    .line 226
    const v4, 0x7f080061

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 234
    .line 235
    const v4, 0x7f0a017d

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    .line 245
    .line 246
    div-int/lit8 p1, p1, 0x2

    .line 247
    .line 248
    invoke-static {p1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v2, Landroid/graphics/Canvas;

    .line 253
    .line 254
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .line 256
    .line 257
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    const v5, 0x7f080062

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v4, v3, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    .line 274
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 281
    .line 282
    .line 283
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 290
    .line 291
    const/16 p1, 0x8

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    return-void
.end method

.method public getBottomMarginForPortrait()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->canUseFingerprint()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 18
    .line 19
    iget v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 20
    .line 21
    div-int/lit8 v2, v2, 0x2

    .line 22
    .line 23
    add-int/2addr v2, v1

    .line 24
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 25
    .line 26
    div-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    add-int/2addr v0, v2

    .line 29
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const v2, 0x7f0700da

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    float-to-int v1, v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    .line 45
    .line 46
    sub-int/2addr v0, p0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const v1, 0x7f070125

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    float-to-int v0, v0

    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const v1, 0x7f070126

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    float-to-int p0, p0

    .line 76
    add-int/2addr v0, p0

    .line 77
    :goto_0
    return v0
.end method

.method public abstract getDefaultDescriptionMessage()Ljava/lang/String;
.end method

.method public final getLeftMargin(IZ)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenLandWidth:I

    .line 4
    .line 5
    :goto_0
    sub-int/2addr p0, p1

    .line 6
    div-int/lit8 p0, p0, 0x2

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    return p0
.end method

.method public final getLockoutErrorMessage(I)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f100044

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getPrimaryBiometricAuthenticator()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-le v3, v4, :cond_0

    .line 20
    .line 21
    move v3, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    iget v5, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    const/4 v7, 0x2

    .line 28
    if-eqz v3, :cond_4

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_f

    .line 35
    .line 36
    if-eq v5, v4, :cond_3

    .line 37
    .line 38
    if-eq v5, v7, :cond_2

    .line 39
    .line 40
    if-eq v5, v6, :cond_1

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    const p1, 0x7f100045

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const p1, 0x7f100046

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    const p1, 0x7f100047

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/16 v3, 0x8

    .line 82
    .line 83
    if-eqz v1, :cond_b

    .line 84
    .line 85
    if-eq v5, v4, :cond_9

    .line 86
    .line 87
    if-eq v5, v7, :cond_7

    .line 88
    .line 89
    if-eq v5, v6, :cond_5

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_5
    if-ne v2, v7, :cond_6

    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    const p1, 0x7f1000d7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_6
    if-ne v2, v3, :cond_f

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    const p1, 0x7f100090

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    if-ne v2, v7, :cond_8

    .line 119
    .line 120
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    const p1, 0x7f1000d8

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    goto :goto_2

    .line 130
    :cond_8
    if-ne v2, v3, :cond_f

    .line 131
    .line 132
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const p1, 0x7f100091

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_2

    .line 142
    :cond_9
    if-ne v2, v7, :cond_a

    .line 143
    .line 144
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    const p1, 0x7f1000d9

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    goto :goto_2

    .line 154
    :cond_a
    if-ne v2, v3, :cond_f

    .line 155
    .line 156
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    const p1, 0x7f100092

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_2

    .line 166
    :cond_b
    const/4 v1, 0x7

    .line 167
    if-ne v2, v7, :cond_d

    .line 168
    .line 169
    if-ne p1, v1, :cond_c

    .line 170
    .line 171
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    const p1, 0x7f1000d4

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    :goto_1
    move-object v0, p0

    .line 181
    goto :goto_2

    .line 182
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    const p1, 0x7f1000d5

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    goto :goto_1

    .line 192
    :cond_d
    if-ne v2, v3, :cond_f

    .line 193
    .line 194
    if-ne p1, v1, :cond_e

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 197
    .line 198
    const p1, 0x7f100086

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    goto :goto_1

    .line 206
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 207
    .line 208
    const p1, 0x7f100087

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    goto :goto_1

    .line 216
    :cond_f
    :goto_2
    return-object v0
.end method

.method public getNavigationBarHeight()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "navigation_bar_height"

    .line 16
    .line 17
    const-string v2, "dimen"

    .line 18
    .line 19
    const-string v3, "android"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "BiometricPromptGuiHelper: No resource"

    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "BiometricPromptGuiHelper: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p0}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 55
    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->isScreenLandscape()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    :goto_0
    return p0
.end method

.method public final getPromptWidth()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-wide v2, 0x4075400000000000L    # 340.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 23
    .line 24
    invoke-static {p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    mul-int/lit8 p0, p0, 0x2

    .line 29
    .line 30
    sub-int v1, v0, p0

    .line 31
    .line 32
    :cond_0
    return v1
.end method

.method public getResourceIdOfPositiveButtonTextSize()I
    .locals 0

    .line 1
    const p0, 0x7f0700d0

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public getScreenLandscapeWidthWithoutNavigationBar()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    .line 19
    .line 20
    sub-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getToastMessageInDex()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract handleAuthenticationError(II)V
.end method

.method public abstract handleAuthenticationFailed()V
.end method

.method public abstract handleAuthenticationHelp(ILjava/lang/String;)V
.end method

.method public abstract handleAuthenticationSucceeded()V
.end method

.method public hideSwitch()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public initPrompt()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getOrientation()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLastOrientation:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayType:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 22
    .line 23
    const v1, 0x7f0a00f4

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mIsManagedProfile:Z

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isKnoxProfile()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-string v4, "com.android.settings"

    .line 49
    .line 50
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v3, "work_challenge_background"

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 62
    .line 63
    iget v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mOrganizationColor:I

    .line 64
    .line 65
    invoke-virtual {v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const v2, 0x106000d

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 79
    .line 80
    const v2, 0x7f0a0105

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 96
    .line 97
    const v3, 0x7f0a01e6

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    .line 107
    .line 108
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 109
    .line 110
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    .line 118
    .line 119
    const v3, 0x7f070088

    .line 120
    .line 121
    .line 122
    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 126
    .line 127
    const v3, 0x7f0a01c2

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_3

    .line 149
    .line 150
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 158
    .line 159
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 167
    .line 168
    const v3, 0x7f070087

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 172
    .line 173
    .line 174
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogo()Landroid/graphics/Bitmap;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget v3, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mUserId:I

    .line 181
    .line 182
    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPackageName:Ljava/lang/String;

    .line 183
    .line 184
    const-string v5, "BSS_PromptConfig"

    .line 185
    .line 186
    const-string v6, "Cannot find app logo for package "

    .line 187
    .line 188
    if-eqz v0, :cond_4

    .line 189
    .line 190
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 191
    .line 192
    iget-object v7, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 193
    .line 194
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getLogo()Landroid/graphics/Bitmap;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getComponentNameForLogo()Landroid/content/ComponentName;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getApplicationInfoForLogo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    if-nez v7, :cond_5

    .line 213
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    const/4 v0, 0x0

    .line 230
    goto :goto_1

    .line 231
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 248
    .line 249
    const v8, 0x7f0a0130

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    check-cast v7, Landroid/widget/ImageView;

    .line 257
    .line 258
    const/16 v8, 0x8

    .line 259
    .line 260
    if-eqz v7, :cond_7

    .line 261
    .line 262
    if-nez v0, :cond_6

    .line 263
    .line 264
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_6
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 272
    .line 273
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getLogoDescription()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-nez v0, :cond_a

    .line 278
    .line 279
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getComponentNameForLogo()Landroid/content/ComponentName;

    .line 282
    .line 283
    .line 284
    move-result-object v7

    .line 285
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getApplicationInfoForLogo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ApplicationInfo;

    .line 286
    .line 287
    .line 288
    move-result-object v7

    .line 289
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v7, :cond_9

    .line 294
    .line 295
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    if-eqz v9, :cond_8

    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_8
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    goto :goto_4

    .line 323
    :cond_9
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    const-string v0, ""

    .line 339
    .line 340
    :cond_a
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-nez v3, :cond_b

    .line 345
    .line 346
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 347
    .line 348
    const v4, 0x7f0a0131

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Landroid/widget/TextView;

    .line 356
    .line 357
    invoke-static {v3, v0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 361
    .line 362
    const v3, 0x7f0a00f7

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Landroid/widget/LinearLayout;

    .line 370
    .line 371
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescLayout:Landroid/widget/LinearLayout;

    .line 372
    .line 373
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_c

    .line 380
    .line 381
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 382
    .line 383
    const v3, 0x7f0a0092

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Landroid/widget/TextView;

    .line 391
    .line 392
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 396
    .line 397
    const v3, 0x7f0a009a

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    check-cast v0, Landroid/widget/TextView;

    .line 405
    .line 406
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 407
    .line 408
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 409
    .line 410
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    .line 416
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    .line 417
    .line 418
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-nez v3, :cond_d

    .line 423
    .line 424
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 425
    .line 426
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 427
    .line 428
    invoke-static {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    goto :goto_6

    .line 433
    :cond_d
    move v3, v2

    .line 434
    :goto_6
    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 435
    .line 436
    .line 437
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 438
    .line 439
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 443
    .line 444
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 448
    .line 449
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semIsDescriptionOptionalUsed()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_e

    .line 454
    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setUpCustomView()V

    .line 456
    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 460
    .line 461
    const/4 v3, 0x4

    .line 462
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 463
    .line 464
    .line 465
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 472
    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_f

    .line 478
    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getDefaultDescriptionMessage()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 484
    .line 485
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 486
    .line 487
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 488
    .line 489
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 493
    .line 494
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;

    .line 499
    .line 500
    const/4 v4, 0x0

    .line 501
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 505
    .line 506
    .line 507
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;

    .line 508
    .line 509
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V

    .line 510
    .line 511
    .line 512
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTextWatcher:Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$4;

    .line 513
    .line 514
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 515
    .line 516
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->isDeviceCredentialAllowed()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    const/4 v3, 0x1

    .line 524
    if-eqz v0, :cond_14

    .line 525
    .line 526
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 527
    .line 528
    const v4, 0x7f0a0077

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    check-cast v0, Landroid/widget/Button;

    .line 536
    .line 537
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 538
    .line 539
    iget v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mCredentialType:I

    .line 540
    .line 541
    if-eq v0, v3, :cond_13

    .line 542
    .line 543
    const/4 v1, 0x2

    .line 544
    if-eq v0, v1, :cond_12

    .line 545
    .line 546
    const/4 v1, 0x3

    .line 547
    if-eq v0, v1, :cond_11

    .line 548
    .line 549
    const/4 v1, 0x6

    .line 550
    if-eq v0, v1, :cond_10

    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 554
    .line 555
    const v1, 0x7f100168

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 563
    .line 564
    goto :goto_9

    .line 565
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 566
    .line 567
    const v1, 0x7f10002e

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 575
    .line 576
    goto :goto_9

    .line 577
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 578
    .line 579
    const v1, 0x7f10002f

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 587
    .line 588
    goto :goto_9

    .line 589
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 590
    .line 591
    const v1, 0x7f100030

    .line 592
    .line 593
    .line 594
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 599
    .line 600
    goto :goto_9

    .line 601
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 602
    .line 603
    const v4, 0x7f0a0071

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    check-cast v0, Landroid/widget/Button;

    .line 611
    .line 612
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 613
    .line 614
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 615
    .line 616
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_15

    .line 625
    .line 626
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 627
    .line 628
    const v1, 0x7f100039

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    goto :goto_8

    .line 636
    :cond_15
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 637
    .line 638
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    :goto_8
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 643
    .line 644
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 645
    .line 646
    invoke-virtual {v0, v3}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 647
    .line 648
    .line 649
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 650
    .line 651
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    .line 652
    .line 653
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 654
    .line 655
    .line 656
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 657
    .line 658
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 659
    .line 660
    .line 661
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    .line 662
    .line 663
    const v1, 0x7f070084

    .line 664
    .line 665
    .line 666
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 667
    .line 668
    .line 669
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 670
    .line 671
    const v1, 0x7f0a0076

    .line 672
    .line 673
    .line 674
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Landroid/widget/Button;

    .line 679
    .line 680
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 681
    .line 682
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 686
    .line 687
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    const v3, 0x7f10003f

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 700
    .line 701
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 702
    .line 703
    .line 704
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    .line 705
    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getResourceIdOfPositiveButtonTextSize()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 711
    .line 712
    .line 713
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 714
    .line 715
    const v1, 0x7f0a0070

    .line 716
    .line 717
    .line 718
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    check-cast v0, Landroid/widget/Button;

    .line 723
    .line 724
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 725
    .line 726
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 727
    .line 728
    .line 729
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 730
    .line 731
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 732
    .line 733
    const v3, 0x7f10003e

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 741
    .line 742
    .line 743
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 744
    .line 745
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 746
    .line 747
    .line 748
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    .line 749
    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getResourceIdOfPositiveButtonTextSize()I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    .line 755
    .line 756
    .line 757
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 758
    .line 759
    if-nez v0, :cond_16

    .line 760
    .line 761
    goto :goto_a

    .line 762
    :cond_16
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;

    .line 763
    .line 764
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V

    .line 765
    .line 766
    .line 767
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 768
    .line 769
    .line 770
    :goto_a
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    .line 771
    .line 772
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;

    .line 777
    .line 778
    const/4 v2, 0x1

    .line 779
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 783
    .line 784
    .line 785
    return-void
.end method

.method public isScreenLandscape()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 13

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "onConfigurationChanged(last="

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLastOrientation:I

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", orientation="

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ", type="

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayType:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, ", prevWidth="

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, ", currWidth="

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLastOrientation:I

    .line 79
    .line 80
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    .line 81
    .line 82
    const/4 v3, 0x2

    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    .line 85
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayType:I

    .line 86
    .line 87
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 88
    .line 89
    if-ne v1, v4, :cond_0

    .line 90
    .line 91
    if-eq v2, v3, :cond_0

    .line 92
    .line 93
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 94
    .line 95
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 96
    .line 97
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    .line 99
    if-eq v1, v4, :cond_f

    .line 100
    .line 101
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 102
    .line 103
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayType:I

    .line 104
    .line 105
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 106
    .line 107
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLastOrientation:I

    .line 108
    .line 109
    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateLayoutAsConfigurationChanged(I)V

    .line 110
    .line 111
    .line 112
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 113
    .line 114
    const/4 v0, 0x0

    .line 115
    if-ne p1, v3, :cond_1

    .line 116
    .line 117
    const/4 p1, 0x1

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move p1, v0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 121
    .line 122
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 123
    .line 124
    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/widget/Switch;->getVisibility()I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_3

    .line 133
    .line 134
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {v6, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    goto :goto_1

    .line 151
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v6, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    :goto_1
    invoke-virtual {v1, v0, v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    .line 159
    .line 160
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    .line 161
    .line 162
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLogoLayout:Landroid/widget/LinearLayout;

    .line 166
    .line 167
    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    .line 168
    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    .line 177
    if-eqz p1, :cond_4

    .line 178
    .line 179
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {v8, v6, v7}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    goto :goto_2

    .line 186
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {v8, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    :goto_2
    invoke-virtual {v1, v0, v8, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    .line 194
    .line 195
    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLogoLayout:Landroid/widget/LinearLayout;

    .line 196
    .line 197
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    .line 203
    .line 204
    if-eqz v1, :cond_7

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .line 212
    if-eqz p1, :cond_6

    .line 213
    .line 214
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-static {v10, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    goto :goto_3

    .line 221
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v10, v6, v7}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    :goto_3
    invoke-virtual {v1, v0, v10, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    .line 229
    .line 230
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 231
    .line 232
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNegativeButtonLayout:Landroid/widget/FrameLayout;

    .line 236
    .line 237
    if-eqz v1, :cond_b

    .line 238
    .line 239
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewBottomDividerView:Landroid/view/View;

    .line 248
    .line 249
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    if-nez v10, :cond_8

    .line 254
    .line 255
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 256
    .line 257
    invoke-static {v10, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    goto :goto_4

    .line 262
    :cond_8
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 263
    .line 264
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    .line 265
    .line 266
    invoke-static {v10, v11, v12}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 267
    .line 268
    .line 269
    move-result v10

    .line 270
    goto :goto_4

    .line 271
    :cond_9
    iget-object v10, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    invoke-static {v10, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    :goto_4
    if-eqz p1, :cond_a

    .line 278
    .line 279
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    .line 282
    .line 283
    invoke-static {v2, v11, v12}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    goto :goto_5

    .line 288
    :cond_a
    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    invoke-static {v11, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    :goto_5
    invoke-virtual {v1, v0, v10, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 295
    .line 296
    .line 297
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mNegativeButtonLayout:Landroid/widget/FrameLayout;

    .line 298
    .line 299
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewTopDividerView:Landroid/view/View;

    .line 303
    .line 304
    if-eqz v1, :cond_d

    .line 305
    .line 306
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    if-eqz p1, :cond_c

    .line 313
    .line 314
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    invoke-static {v2, v8, v9}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    goto :goto_6

    .line 321
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 322
    .line 323
    invoke-static {v2, v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    :goto_6
    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 328
    .line 329
    .line 330
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewTopDividerView:Landroid/view/View;

    .line 331
    .line 332
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewBottomDividerView:Landroid/view/View;

    .line 336
    .line 337
    if-eqz v1, :cond_f

    .line 338
    .line 339
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    .line 345
    if-eqz p1, :cond_e

    .line 346
    .line 347
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 348
    .line 349
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    .line 350
    .line 351
    invoke-static {p1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 352
    .line 353
    .line 354
    move-result p1

    .line 355
    goto :goto_7

    .line 356
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-static {p1, v6, v7}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    :goto_7
    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollViewBottomDividerView:Landroid/view/View;

    .line 366
    .line 367
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    .line 369
    .line 370
    :cond_f
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mLastOrientation:I

    .line 10
    .line 11
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final setBottomArea()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogBottomAreaView:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->getPrimaryBiometricAuthenticator()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v1, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->isScreenLandscape()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getBottomMarginForPortrait()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 39
    .line 40
    invoke-static {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->dipToPixel(Landroid/content/Context;D)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 45
    .line 46
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->isScreenLandscape()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const/4 v1, 0x0

    .line 56
    :goto_2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDialogBottomAreaView:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public setUpCustomView()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a00f8

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 13
    .line 14
    const v2, 0x7f0a00f9

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/widget/LinearLayout;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    .line 24
    .line 25
    const/4 v3, 0x5

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 30
    .line 31
    iget-object v3, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    invoke-static {v0, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v4}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-static {v1, v5}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 55
    .line 56
    .line 57
    check-cast v3, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;->getDescription()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getDefaultDescriptionMessage()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 76
    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 78
    .line 79
    const v1, 0x7f0a0093

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda1;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_1
    invoke-static {v0, v5}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->setVisibility(Landroid/view/View;I)V

    .line 101
    .line 102
    .line 103
    check-cast v3, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getDescription()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getDefaultDescriptionMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    .line 122
    .line 123
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 124
    .line 125
    const v1, 0x7f0a015f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Landroid/widget/ListView;

    .line 133
    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    iget-object v1, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getContentView()Landroid/hardware/biometrics/PromptContentView;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/hardware/biometrics/PromptVerticalListContentView;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptVerticalListContentView;->getListItems()Ljava/util/List;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v2, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    move v3, v5

    .line 154
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-ge v3, v4, :cond_5

    .line 159
    .line 160
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    instance-of v4, v4, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 165
    .line 166
    if-eqz v4, :cond_3

    .line 167
    .line 168
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroid/hardware/biometrics/PromptContentItemBulletedText;

    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptContentItemBulletedText;->getText()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    instance-of v4, v4, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 187
    .line 188
    if-eqz v4, :cond_4

    .line 189
    .line 190
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Landroid/hardware/biometrics/PromptContentItemPlainText;

    .line 195
    .line 196
    invoke-virtual {v4}, Landroid/hardware/biometrics/PromptContentItemPlainText;->getText()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 207
    .line 208
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    const v3, 0x7f0d0026

    .line 211
    .line 212
    .line 213
    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    .line 224
    .line 225
    .line 226
    move-result p0

    .line 227
    move v1, v5

    .line 228
    move v2, v1

    .line 229
    :goto_2
    if-ge v1, p0, :cond_6

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    const/4 v4, 0x0

    .line 236
    invoke-interface {v3, v1, v4, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .line 250
    const/high16 v6, 0x43fa0000    # 500.0f

    .line 251
    .line 252
    mul-float/2addr v4, v6

    .line 253
    float-to-int v4, v4

    .line 254
    const/high16 v6, -0x80000000

    .line 255
    .line 256
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 261
    .line 262
    .line 263
    move-result v6

    .line 264
    invoke-virtual {v3, v4, v6}, Landroid/view/View;->measure(II)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    add-int/2addr v2, v3

    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ListView;->getDividerHeight()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    add-int/lit8 p0, p0, -0x1

    .line 280
    .line 281
    mul-int/2addr p0, v1

    .line 282
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    .line 287
    .line 288
    .line 289
    move-result v3

    .line 290
    add-int/2addr v3, v1

    .line 291
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    add-int/2addr v2, p0

    .line 296
    add-int/2addr v2, v3

    .line 297
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    .line 299
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 303
    .line 304
    .line 305
    :cond_7
    :goto_3
    return-void
.end method

.method public final setUpKnoxBrandLogoImage()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0105

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v3, 0x7f070123

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    float-to-int v2, v2

    .line 35
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x3

    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->getStatusBarHeight()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    add-int/2addr v2, p0

    .line 49
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final setUpLeftMarginViewWidth(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a00fd

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 20
    .line 21
    return-void
.end method

.method public setUpScrollView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a0184

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ScrollView;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->updateScrollViewHeight()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public abstract show()V
.end method

.method public showBiometricName(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public updateLayoutAsConfigurationChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final updateScrollViewHeight()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->isScreenLandscape()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const v2, 0x7f070073

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v2, 0x7f070074

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRatioHeight(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mPromptConfig:Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;

    .line 42
    .line 43
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/prompt/PromptConfig;->mNumberOfAvailableBiometrics:I

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const v3, 0x7f070076

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    float-to-int v2, v2

    .line 63
    sub-int/2addr v1, v2

    .line 64
    :goto_1
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 65
    .line 66
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;->mScrollView:Landroid/widget/ScrollView;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/prompt/BiometricPromptGuiHelper;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    .line 93
    .line 94
    :goto_2
    return-void
.end method
