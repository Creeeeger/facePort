.class public Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "BiometricsRotationGuide.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final GuideTextPaddingRate:D

.field private final GuideTextPaddingRateLandScape:D

.field private final GuideVideoHeightRate:D

.field private final GuideVideoMaginTopRate:D

.field private final GuideVideoResizeRateLand:D

.field private final GuideVideoWidthRate:D

.field private final MAX_BUTTON_FONT_SCALE:F

.field private final MAX_BUTTON_SIZE_TABLET:D

.field private display:Landroid/view/Display;

.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mContinueButtonArea:Landroid/widget/LinearLayout;

.field private mFromSetupWizard:Z

.field private mGuideScrollView:Landroid/widget/ScrollView;

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mIsFinished:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOrientation:I

.field private mRequestBiometricsType:I

.field private mScreenWidth:I

.field private mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

.field private mSurface:Landroid/view/Surface;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$jLpdz5erKEYrJLqUDK7rFIxdbzE(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->lambda$setMediaPlayer$0(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    .line 47
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    const-wide v1, 0x3fbeb851eb851eb8L    # 0.12

    .line 53
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideTextPaddingRate:D

    const-wide v1, 0x3fca666666666666L    # 0.20625

    .line 54
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideTextPaddingRateLandScape:D

    const-wide v1, 0x3fc70a3d70a3d70aL    # 0.18

    .line 55
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideVideoMaginTopRate:D

    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 56
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideVideoWidthRate:D

    const-wide v3, 0x3fd6d916872b020cL    # 0.357

    .line 57
    iput-wide v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideVideoHeightRate:D

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 58
    iput-wide v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->GuideVideoResizeRateLand:D

    .line 59
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->MAX_BUTTON_SIZE_TABLET:D

    const v1, 0x3fa66666    # 1.3f

    .line 60
    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->MAX_BUTTON_FONT_SCALE:F

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private adjustFontScale()V
    .locals 4

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "adjustFontScale"

    .line 209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 212
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAdjustedFontScale(FF)F

    move-result v0

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private getGuideVideoUri(I)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 336
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "/raw/rotation_guide_help_horizontal_270"

    goto :goto_0

    :cond_1
    const-string p0, "/raw/rotation_guide_help_270"

    goto :goto_0

    .line 331
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "/raw/rotation_guide_help_horizontal_180"

    goto :goto_0

    :cond_3
    const-string p0, "/raw/rotation_guide_help_180"

    goto :goto_0

    :cond_4
    const-string p0, "/raw/rotation_guide_help_90"

    goto :goto_0

    :cond_5
    const-string p0, "/raw/rotation_guide_help_horizontal_0"

    .line 341
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://com.samsung.android.biometrics.app.setting"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private initBiometricsRotationGuideGUI()V
    .locals 12

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "initBiometricsRotationGuideGUI"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isPortrait()Z

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    .line 229
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    .line 231
    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    const/16 v7, 0x8

    if-eqz v6, :cond_0

    .line 232
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 233
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_1

    .line 237
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 241
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    const/16 v7, 0xf

    .line 242
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 243
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 247
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_6

    .line 248
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide v7, 0x3fe3333333333333L    # 0.6

    .line 251
    iget-object v9, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    invoke-static {v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v9

    goto :goto_1

    :cond_3
    invoke-static {v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v9

    :goto_1
    int-to-double v9, v9

    mul-double/2addr v9, v7

    double-to-int v7, v9

    const-wide v8, 0x3fd6d916872b020cL    # 0.357

    .line 252
    iget-object v10, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-static {v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v10

    goto :goto_2

    :cond_4
    invoke-static {v10}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    :goto_2
    int-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v8, v10

    if-eqz v1, :cond_5

    const-wide v9, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v4, v9

    double-to-int v4, v4

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "marginTop : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_5
    int-to-double v4, v7

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v4, v9

    double-to-int v7, v4

    int-to-double v4, v8

    mul-double/2addr v4, v9

    double-to-int v8, v4

    .line 261
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFullScreenHeight(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "margin : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 264
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 267
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoSize - width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 269
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    const-wide v4, 0x3fbeb851eb851eb8L    # 0.12

    goto :goto_4

    :cond_7
    const-wide v4, 0x3fca666666666666L    # 0.20625

    :goto_4
    mul-double/2addr v2, v4

    double-to-int v1, v2

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 280
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setButtonGUI()V

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->adjustFontScale()V

    return-void
.end method

.method private isDeviceRotatedForRegistration(I)Z
    .locals 1

    .line 121
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p1, v0, :cond_1

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isPortrait()Z
    .locals 3

    .line 313
    iget p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    const-string v0, "BiometricsRotationGuide"

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "isPortrait : true"

    .line 317
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    :goto_0
    const-string p0, "isPortrait : false"

    .line 314
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setMediaPlayer$0(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onSurfaceTextureAvailable : onPrepared"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_0
    const-string p1, "onPrepared : mediaPlayer == null"

    .line 371
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 372
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method private setButtonGUI()V
    .locals 5

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "setButtonSize"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mScreenWidth:I

    int-to-double v1, v1

    const-wide v3, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_area_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 300
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_area_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 301
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 345
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->getGuideVideoUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 350
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 352
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 356
    :cond_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 357
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 358
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 359
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricsRotationGuide"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected finishRotationGuide(I)V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "finishRotationGuide"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onBackPressed"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    const-string p1, "BiometricsRotationGuide"

    const-string v0, "onClickContinue"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 221
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : past = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsRotationGuide"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isDeviceRotatedForRegistration(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Rotation changed! Finish the activity"

    .line 141
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    goto :goto_0

    .line 144
    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V

    const-string p1, "Change the guide video!"

    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BiometricsRotationGuide"

    const-string v0, "onCreate"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->display:Landroid/view/Display;

    .line 72
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mOrientation:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->isDeviceRotatedForRegistration(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "The right direction! Finish the rotation guide."

    .line 76
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromSetupWizard"

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mRequestBiometricsType:I

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFromSetupWizard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mFromSetupWizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRequestBiometricsType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mRequestBiometricsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mRequestBiometricsType:I

    .line 89
    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAppId(I)I

    move-result v1

    .line 88
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->finishRotationGuide(I)V

    return-void

    .line 94
    :cond_1
    sget v1, Lcom/android/settings/R$layout;->sec_biometrics_rotation_guide:I

    invoke-virtual {p0, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 96
    sget v1, Lcom/android/settings/R$id;->biometrics_rotation_guide_view_container:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    .line 97
    sget v1, Lcom/android/settings/R$id;->biometrics_rotation_guide_view_pager:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    .line 98
    sget v1, Lcom/android/settings/R$id;->guide_text_scroll:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideScrollView:Landroid/widget/ScrollView;

    .line 99
    sget v1, Lcom/android/settings/R$id;->continue_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButton:Landroid/widget/Button;

    .line 100
    sget v1, Lcom/android/settings/R$id;->continueButtonContainer:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mContinueButtonArea:Landroid/widget/LinearLayout;

    .line 101
    sget v1, Lcom/android/settings/R$id;->setupwizard_bottom_button_bar:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_3

    .line 108
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mWindowManager:Landroid/view/WindowManager;

    :cond_3
    const-string v0, "onCreate : hide the action bar"

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 115
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 116
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->removeSideMargin(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onDestroy"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 194
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    :cond_0
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    .line 199
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onPause"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 171
    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 175
    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mSurface:Landroid/view/Surface;

    .line 178
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mIsFinished:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "biometrics_settings_destroy"

    .line 181
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 185
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    const-string v0, "BiometricsRotationGuide"

    const-string v1, "onResume"

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->initBiometricsRotationGuideGUI()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "BiometricsRotationGuide"

    const-string p3, "onSurfaceTextureAvailable: setMediaPlayer"

    .line 381
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsRotationGuide;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
