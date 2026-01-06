.class public abstract Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;
.super Ljava/lang/Object;
.source "BiometricPromptGuiHelper.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x64L

.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_DURATION_DIALOG:I = 0x1c2

.field protected static final DEBUG:Z

.field private static final DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

.field private static final DIALOG_EXTEND:Landroid/view/animation/Interpolator;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mBaseView:Landroid/view/View;

.field protected mBottomBtnText:Ljava/lang/CharSequence;

.field protected mBottomButton:Landroid/widget/Button;

.field protected mBottomMarginForLandscape:I

.field protected mBottomMarginForPortrait:I

.field protected mBottomMarginForTabletWinnerPortrait:I

.field protected mBundle:Landroid/os/Bundle;

.field protected mConfirmButton:Landroid/widget/Button;

.field protected mContext:Landroid/content/Context;

.field protected mDescLayout:Landroid/widget/LinearLayout;

.field protected mDescriptionText:Ljava/lang/CharSequence;

.field protected mDescriptionTxtView:Landroid/widget/TextView;

.field protected mDialogLayout:Landroid/widget/LinearLayout;

.field protected mDialogLeftMarginView:Landroid/view/View;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDisplayType:I

.field protected mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

.field protected mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field protected mIsCheckToEnrolledBiometricMode:Z

.field protected mIsFingerAble:Z

.field protected mIsOnlyOneBioAble:Z

.field protected mIsSupportDualDisplay:Z

.field protected mKnoxTwoFactorView:Landroid/widget/TextView;

.field protected mLastOrientation:I

.field protected mNavigationBarHeight:I

.field protected mPositiveButtonLayout:Landroid/widget/FrameLayout;

.field private mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

.field private mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field protected mReTryButton:Landroid/widget/Button;

.field protected mScreenLandWidth:I

.field protected mScreenPortraitWidth:I

.field protected mSubTitleText:Ljava/lang/CharSequence;

.field protected mSubTitleTxtView:Landroid/widget/TextView;

.field protected mSwitch:Landroid/widget/Switch;

.field protected mTitleKnoxImgView:Landroid/widget/ImageView;

.field protected mTitleKnoxTxtView:Landroid/widget/TextView;

.field protected mTitleText:Ljava/lang/CharSequence;

.field protected mTitleTxtView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->DEBUG:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->DIALOG_EXTEND:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BSS_BiometricPromptGuiHelper"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DUAL_DISPLAY:Z

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsSupportDualDisplay:Z

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPromptInfo()Landroid/hardware/biometrics/PromptInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNumberOfAvailableBiometricInPrompt(Landroid/os/Bundle;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsOnlyOneBioAble:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v1, "mBaseView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SettingHelper;->isNavigationBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v5, "BiometricPromptGuiHelper: No resource"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BiometricPromptGuiHelper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->readInfoFromBundle()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->setBackgroundImage()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mScreenLandWidth:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mScreenPortraitWidth:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070074

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomMarginForLandscape:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070075

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomMarginForTabletWinnerPortrait:I

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsFingerAble:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getInDisplaySensorHelper()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInDisplayHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mNavigationBarHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomMarginForPortrait:I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07013b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07013c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomMarginForPortrait:I

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a019e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    const v3, 0x7f07007e

    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a0167

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v3, 0x7f0a00c1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v3, 0x7f07007d

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleTxtView:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00d5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00d6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00d7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00d3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00c7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x7f09000e

    goto :goto_4

    :cond_7
    const v5, 0x7f090011

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v6

    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->customizeSwitch(II)V

    iget-boolean v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsOnlyOneBioAble:Z

    const v7, 0x7f0a00c2

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070073

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v8, 0x7f0a007c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    new-instance v8, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    new-instance v7, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    const v7, 0x7f07007a

    invoke-static {v6, v7}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v7, 0x7f0a0062

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v7, 0x7f0a0060

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f100046

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const v8, 0x7f0700e3

    invoke-static {v6, v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f100045

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-static {v6, v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v8, 0x7f0a0140

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxImgView:Landroid/widget/ImageView;

    new-instance v6, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const-string v9, "com.android.settings"

    invoke-direct {v6, v8, v9}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "knox_basic"

    invoke-virtual {v6, v8}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    const/16 v10, 0x20

    if-ne v9, v10, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    if-eqz v1, :cond_a

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_6

    :cond_a
    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_6
    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxImgView:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxImgView:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v6, "SECURE_FOLDER"

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "MANAGED_PROFILE_KNOX_LEGACY_CL"

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f100043

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v9, 0x7f100044

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleTxtView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v8}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "SECURE_FOLDER_NAME"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f100042

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v6, 0x7f0a00bd

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxTxtView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxTxtView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleKnoxTxtView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v6, "MANAGED_PROFILE_KNOX_TWO_FACTOR"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v6, 0x7f0a00be

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mKnoxTwoFactorView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mKnoxTwoFactorView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    :cond_12
    return-void
.end method

.method private readInfoFromBundle()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSubTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getEffectiveUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f100034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f100035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    nop

    :goto_0
    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f100040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getAvailableBiometric(Landroid/os/Bundle;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsFingerAble:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isCheckToEnrollMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBackgroundImage()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBundle:Landroid/os/Bundle;

    const-string v2, "MANAGED_PROFILE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxUtils;->supportKnoxContainer()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/ResourceManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui"

    invoke-direct {v1, v2, v4}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "work_challenge_background"

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/ResourceManager;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBundle:Landroid/os/Bundle;

    const-string v5, "MANAGED_PROFILE_COLOR"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public abstract cleanUpPrompt()V
.end method

.method protected customizeSwitch(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mIsOnlyOneBioAble:Z

    const/16 v4, 0x8

    if-nez v3, :cond_6

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f080075

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f080077

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    if-le v1, v6, :cond_1

    sub-int v9, v1, v6

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setSwitchMinWidth(I)V

    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->getSwitchMinWidth()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07006f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v11}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v12

    sub-int v12, v9, v12

    const/4 v13, 0x2

    div-int/2addr v12, v13

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v12, v8, 0x4

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieAnimationView;->getWidth()I

    move-result v14

    div-int/2addr v14, v13

    sub-int/2addr v12, v14

    iput v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieAnimationView;->getHeight()I

    move-result v12

    sub-int v12, v9, v12

    div-int/2addr v12, v13

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v12, v8, 0x3

    const/4 v14, 0x4

    div-int/2addr v12, v14

    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v15}, Lcom/airbnb/lottie/LottieAnimationView;->getWidth()I

    move-result v15

    div-int/2addr v15, v13

    sub-int/2addr v12, v15

    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v12, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    const/4 v12, 0x0

    if-ne v2, v13, :cond_2

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarLeft:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_2
    if-ne v2, v4, :cond_3

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14, v13}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mProgressBarRight:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v14}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_3
    :goto_1
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v12, v12, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v16, Landroid/text/TextPaint;

    invoke-direct/range {v16 .. v16}, Landroid/text/TextPaint;-><init>()V

    move-object/from16 v17, v16

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v4, v17

    invoke-virtual {v4, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f06003f

    invoke-virtual {v12, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v12, 0x7f07006e

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    const-string v7, ""

    if-ne v2, v13, :cond_4

    move-object v12, v7

    goto :goto_2

    :cond_4
    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v13, 0x7f10003a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    int-to-float v13, v8

    const/high16 v18, 0x40800000    # 4.0f

    div-float v13, v13, v18

    int-to-float v1, v9

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v19

    sub-float v1, v1, v19

    const/high16 v17, 0x40000000    # 2.0f

    div-float v1, v1, v17

    invoke-virtual {v15, v12, v13, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v1, 0x8

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f100039

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object v1, v7

    mul-int/lit8 v7, v8, 0x3

    int-to-float v7, v7

    div-float v7, v7, v18

    int-to-float v12, v9

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v15, v1, v7, v12, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v7, v12, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v5, v7

    const v7, 0x7f0a0127

    invoke-virtual {v3, v7, v5}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v3}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    div-int/lit8 v7, v8, 0x2

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v1

    const v1, 0x7f080076

    invoke-virtual {v13, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    div-int/lit8 v13, v8, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v13, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v13, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v2, v13, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_6
    :goto_4
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mSwitch:Landroid/widget/Switch;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getPromptType()I
.end method

.method public abstract handleAuthenticationError(IILjava/lang/String;)Z
.end method

.method public abstract handleAuthenticationFailed(Ljava/lang/String;)V
.end method

.method public abstract handleAuthenticationHelp(ILjava/lang/String;)V
.end method

.method public abstract handleAuthenticationSucceeded(Ljava/lang/String;Z)Z
.end method

.method public abstract handleEvent(IILandroid/os/Bundle;)V
.end method

.method public handleTspBlock(Z)V
    .locals 0

    return-void
.end method

.method public abstract initPrompt()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onRotationInfoChanged(I)V
.end method

.method protected setVisibilityDelayAnimation(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->DESCRIPTION_CHANGE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public abstract show()V
.end method

.method protected updateUiAnimation()V
    .locals 3

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    sget-object v1, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->DIALOG_EXTEND:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mDescLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mPositiveButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/transition/ChangeBounds;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;->mBaseView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method
