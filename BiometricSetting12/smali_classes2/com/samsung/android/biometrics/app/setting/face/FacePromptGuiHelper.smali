.class public Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;
.super Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;
.source "FacePromptGuiHelper.java"


# static fields
.field private static final MSG_ACQUIRED_ERROR:I = 0x1

.field private static final MSG_ACQUIRED_GOOD:I


# instance fields
.field private mAuthenticationFailText:Ljava/lang/String;

.field private mDialog:Landroid/widget/LinearLayout;

.field private mDialogLeftMarginView:Landroid/view/View;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFeedbackTextView:Landroid/widget/TextView;

.field private mIsCameraBlocked:Z

.field private mIsSupportNegativeButton:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private mTimePreviousHelpMessage:J

.field private mViViewLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptGuiHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;Landroid/view/View;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".Fa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->playPunchHoleAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsCameraBlocked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsCameraBlocked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/hardware/SensorPrivacyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    return-object v0
.end method

.method private pausePunchHoleAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void
.end method

.method private playPunchHoleAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isOneHandedModeActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isNightThemeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private setEventListener()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$1;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$2;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$3;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$4;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private setPunchHoleRotation(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRotation(F)V

    :goto_0
    return-void
.end method

.method private setTextOnDescriptionTextView(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateIcon(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsCheckToEnrolledBiometricMode:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f080078

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700fc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsOnlyOneBioAble:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "face_error_nomatch.json"

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public cleanUpPrompt()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIconImgView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    return-void
.end method

.method public getPromptType()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 3

    const v0, 0x186a3

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f10004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f10004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return v0
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    const-string v1, "mBaseView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mAuthenticationFailText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setTextOnDescriptionTextView(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->pausePunchHoleAnimation()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setVisibilityDelayAnimation(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    const v1, 0x7f10003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f100040

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnDismissed(I[B)V

    return v0
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public initPrompt()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor_privacy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsCameraBlocked:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayType:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLastOrientation:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f100055

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mAuthenticationFailText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mFeedbackTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialog:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->updateIcon(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f100080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v1, 0x7f0a00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00c7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f100046

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mReTryButton:Landroid/widget/Button;

    const v5, 0x7f0700e3

    invoke-static {v1, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f100045

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-static {v1, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->setMaxTextScaleSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v4, 0x7f0a00d4

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v3, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleVIHelper:Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/PunchHoleVIHelper;->getPunchHoleVIRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationX(F)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mViViewLocation:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPunchHoleIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setEventListener()V

    return-void
.end method

.method public synthetic lambda$setEventListener$0$FacePromptGuiHelper(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v2, 0x66

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsSupportNegativeButton:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnButtonPressed(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070139

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLastOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v7, :cond_0

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayType:I

    iget v7, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v5, v7, :cond_0

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v8, :cond_5

    :cond_0
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_1

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :cond_1
    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForLandscape:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000c

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mScreenLandWidth:I

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v8

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mScreenPortraitWidth:I

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v5

    const v6, 0x7f09000d

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsSupportDualDisplay:Z

    if-eqz v5, :cond_3

    iget v5, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-eq v5, v9, :cond_3

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForPortrait:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForTabletWinnerPortrait:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mScreenPortraitWidth:I

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v5, v6

    div-int/2addr v5, v8

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_2
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLastOrientation:I

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->customizeSwitch(II)V

    iget v5, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayType:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    :cond_5
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->setPunchHoleRotation(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mLastOrientation:I

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitleText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubTitleText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mSubTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDescriptionText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDescriptionText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBottomBtnText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomBtnText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000c

    invoke-virtual {v4, v5, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForLandscape:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mScreenLandWidth:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09000d

    invoke-virtual {v4, v5, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTablet()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mIsSupportDualDisplay:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDisplayType:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForPortrait:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    :goto_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBottomMarginForTabletWinnerPortrait:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mScreenPortraitWidth:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialogLeftMarginView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->customizeSwitch(II)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBundle:Landroid/os/Bundle;

    const-string v4, "sem_package_not_keyguard"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBundle:Landroid/os/Bundle;

    invoke-static {v4, v5}, Lcom/samsung/android/biometrics/app/setting/Utils;->isShowDexPrompt(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f100058

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mBaseView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/biometrics/app/setting/face/FacePromptGuiHelper;->mTimePreviousHelpMessage:J

    return-void
.end method
