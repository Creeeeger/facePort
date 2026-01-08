.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field static final FINGERPRINT_BG_WINDOW_CONTAINER_COLOR:Ljava/lang/String; = "#252525"


# instance fields
.field public mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public mFingerIconHideReason:I

.field public mFingerprintLayout:Landroid/widget/FrameLayout;

.field public mFpIconContainer:Landroid/widget/RelativeLayout;

.field public mLottieCompositionLoadedListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;

.field public mLottieViewFilterColor:I

.field public mOriginPosX:I

.field public mOriginPosY:I

.field public final mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field mUseBaseWindow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosX:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosY:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mLottieViewFilterColor:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p2, "DM = "

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string p1, "BSS_UdfpsSensorWindow"

    .line 40
    .line 41
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public addView()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mUseBaseWindow:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->addView()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->updateViewLayout()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public getContainerColor()I
    .locals 0

    .line 1
    const-string p0, "#252525"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getContainerDrawable()Landroid/graphics/drawable/InsetDrawable;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->getContainerColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    const/high16 v3, 0x3f000000    # 0.5f

    .line 17
    .line 18
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v6, v1

    .line 23
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    .line 24
    .line 25
    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const/16 v0, 0x25

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    mul-float/2addr v0, p0

    .line 43
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 49
    .line 50
    .line 51
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    move-object v2, p0

    .line 56
    move v4, v6

    .line 57
    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 58
    .line 59
    .line 60
    return-object p0
.end method

.method public getIconColor()I
    .locals 0

    .line 1
    const-string p0, "#fafafa"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    const v5, 0x1000018

    .line 14
    .line 15
    .line 16
    const/4 v6, -0x3

    .line 17
    const/16 v4, 0xa3b

    .line 18
    .line 19
    move-object v1, v7

    .line 20
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 21
    .line 22
    .line 23
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    .line 25
    const v1, -0x10001

    .line 26
    .line 27
    .line 28
    and-int/2addr v0, v1

    .line 29
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 33
    .line 34
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 35
    .line 36
    or-int/lit16 v0, v0, 0x2050

    .line 37
    .line 38
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTpaMode(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    iget p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 49
    .line 50
    const/high16 v0, 0x100000

    .line 51
    .line 52
    or-int/2addr p0, v0

    .line 53
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 57
    .line 58
    .line 59
    const/high16 p0, 0x40000

    .line 60
    .line 61
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 62
    .line 63
    .line 64
    const/high16 p0, 0x20000000

    .line 65
    .line 66
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 67
    .line 68
    .line 69
    const/high16 p0, 0x20000

    .line 70
    .line 71
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 72
    .line 73
    .line 74
    const/16 p0, 0x8

    .line 75
    .line 76
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 77
    .line 78
    .line 79
    const-string p0, "FP Iconview"

    .line 80
    .line 81
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    const/4 p0, 0x5

    .line 85
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->surfaceType:I

    .line 86
    .line 87
    return-object v7
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_UdfpsSensorWindow"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleContainerRotation(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->getContainerDrawable()Landroid/graphics/drawable/InsetDrawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x41680000    # 14.5f

    .line 16
    .line 17
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    float-to-int v1, v1

    .line 25
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Landroid/graphics/Canvas;

    .line 32
    .line 33
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    const/high16 v4, 0x42b40000    # 90.0f

    .line 38
    .line 39
    mul-float/2addr p1, v4

    .line 40
    int-to-float v1, v1

    .line 41
    const/high16 v4, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v1, v4

    .line 44
    invoke-virtual {v3, p1, v1, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-virtual {v0, v4, v4, p1, v1}, Landroid/graphics/drawable/InsetDrawable;->setBounds(IIII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    .line 66
    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method

.method public final handleRotation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const v0, 0x7f01001d

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const v0, 0x7f01001c

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const v0, 0x7f01001e

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const v0, 0x7f01001b

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v1, v0, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->startLayoutAnimation()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->handleContainerRotation(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final hideSensorIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerIconHideReason:I

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setSensorVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final initFromBaseWindow(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mUseBaseWindow:Z

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initLayout(Landroid/widget/FrameLayout;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "UdfpsSensorWindow must not be null"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final initLayout(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const v0, 0x7f0a01a1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const v0, 0x7f0a019b

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    const/4 v0, 0x4

    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->initSensorLayout()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public initSensorLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllLottieOnCompositionLoadedListener()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mLottieCompositionLoadedListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mLottieCompositionLoadedListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->updateSensorViewLocation()V

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mUseBaseWindow:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setSensorIcon()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final isSensorIconShown()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final moveIcon(II)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "moveIcon: x = ["

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "], y = ["

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "]"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "BSS_UdfpsSensorWindow"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosX:I

    .line 38
    .line 39
    int-to-float v0, v0

    .line 40
    int-to-float p1, p1

    .line 41
    add-float/2addr v0, p1

    .line 42
    iget p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosY:I

    .line 43
    .line 44
    int-to-float p1, p1

    .line 45
    int-to-float p2, p2

    .line 46
    add-float/2addr p1, p2

    .line 47
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->updateSensorViewLocation()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->updateViewLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->handleRotation(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->updateViewLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public removeView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mUseBaseWindow:Z

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->removeView()V

    .line 12
    .line 13
    .line 14
    :goto_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final setLottieViewColorFilter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mLottieViewFilterColor:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mLottieCompositionLoadedListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$1;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setSensorIcon()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->getIconColor()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    .line 7
    const-string v2, "ic_fingerprint_prompt.json"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setLottieViewColorFilter(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->getContainerDrawable()Landroid/graphics/drawable/InsetDrawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->handleContainerRotation(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final setSensorVisibility(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setSensorVisibility: ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BSS_UdfpsSensorWindow"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final setVisibility(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "setVisibility: ["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "]"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "BSS_UdfpsSensorWindow"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public showSensorIcon()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->setSensorVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final updateSensorViewLocation()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 2
    .line 3
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 6
    .line 7
    iget v3, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    .line 11
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    const/4 v7, 0x5

    .line 26
    const/high16 v8, 0x41680000    # 14.5f

    .line 27
    .line 28
    invoke-static {v7, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    float-to-int v6, v6

    .line 33
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    if-eq v9, v6, :cond_0

    .line 36
    .line 37
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    .line 39
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    .line 41
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    .line 45
    .line 46
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 52
    .line 53
    if-ne v5, v3, :cond_1

    .line 54
    .line 55
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 56
    .line 57
    if-eq v5, v3, :cond_2

    .line 58
    .line 59
    :cond_1
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 60
    .line 61
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 71
    .line 72
    .line 73
    :cond_2
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 74
    .line 75
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->getSensorImagePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 86
    .line 87
    invoke-static {v7, v8, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    float-to-int v4, v4

    .line 92
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 93
    .line 94
    iget v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 95
    .line 96
    sub-int/2addr v4, v2

    .line 97
    div-int/lit8 v4, v4, 0x2

    .line 98
    .line 99
    sub-int/2addr v5, v4

    .line 100
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 101
    .line 102
    sub-int/2addr v2, v4

    .line 103
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    int-to-float v4, v5

    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setX(F)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mFpIconContainer:Landroid/widget/RelativeLayout;

    .line 110
    .line 111
    int-to-float v4, v2

    .line 112
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setY(F)V

    .line 113
    .line 114
    .line 115
    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosX:I

    .line 116
    .line 117
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mOriginPosY:I

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v4, "SIL: "

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, ", "

    .line 130
    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "BSS_UdfpsSensorWindow"

    .line 148
    .line 149
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->handleRotation(I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
