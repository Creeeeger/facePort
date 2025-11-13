.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$SfpsEnrollStage;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field public static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field public mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAnimationCancelled:Z

.field public mCanAssumeSfps:Z

.field public mCanAssumeUdfps:Z

.field public final mDelayedFinishRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

.field public mErrorText:Landroid/widget/TextView;

.field public mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mHaveShownSfpsCenterLottie:Z

.field public mHaveShownSfpsLeftEdgeLottie:Z

.field public mHaveShownSfpsNoAnimationLottie:Z

.field public mHaveShownSfpsRightEdgeLottie:Z

.field public mHaveShownSfpsTipLottie:Z

.field public mHaveShownUdfpsCenterLottie:Z

.field public mHaveShownUdfpsGuideLottie:Z

.field public mHaveShownUdfpsLeftEdgeLottie:Z

.field public mHaveShownUdfpsRightEdgeLottie:Z

.field public mHaveShownUdfpsTipLottie:Z

.field public mHelpAnimation:Landroid/animation/Animator;

.field public final mIconAnimationCallback:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

.field public mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public mIconTouchCount:I

.field public mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field public mIsAccessibilityEnabled:Z

.field mIsCanceled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsSetupWizard:Z

.field public mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

.field public mPreviousRotation:I

.field public mProgressAnim:Landroid/animation/ObjectAnimator;

.field public final mProgressAnimationListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRestoring:Z

.field public mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

.field public mShouldShowLottie:Z

.field public final mShowDialogRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

.field public final mTouchAgainRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

.field mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    const/16 v0, 0x42

    invoke-static {v0}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$EmptySfpsEnrollmentFeature;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    return-void
.end method


# virtual methods
.method public final announceEnrollmentProgress(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final applySfpsErrorDynamicColors(Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const v0, 0x7f060a5a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f060a5b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    const v0, 0x7f060a58

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f060a57

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, ".blue100"

    const-string v2, "**"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda5;-><init>(I)V

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {p1, p2, v1, v0}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->invalidate()V

    :cond_3
    return-void
.end method

.method public configureEnrollmentStage(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public final dismissTouchDialogIfSfps()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string v0, "fps_icon_touch_dialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    :cond_1
    return-void
.end method

.method public getFinishIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method public final getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 3

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>(ILandroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getStageThresholdSteps(I)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getEnrollStageThreshold(Landroid/content/Context;I)F

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p1

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    :goto_1
    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "getStageThresholdSteps: Enrollment not started yet"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isStageHalfCompleted()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    sub-int/2addr v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v0, v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result v4

    if-lt v2, v3, :cond_2

    if-ge v2, v4, :cond_2

    sub-int/2addr v2, v3

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_1

    move v1, v5

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_3
    return v5

    :cond_4
    :goto_1
    return v1
.end method

.method public final maybeHideSfpsText(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    const-class v2, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/template/DescriptionMixin;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    if-eqz p1, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setMinLines(I)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onAcquired(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget p1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    iget v0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mPace:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object v0, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f15037d

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCancelEnrollment(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    instance-of v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-static {p0, p1, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->showErrorDialog(Landroidx/fragment/app/FragmentActivity;IZ)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->cancelEnrollment()V

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->maybeHideSfpsText(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Error unhandled configuration change"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;

    invoke-direct {v2}, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "biometrics_modality"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "destroy_activity"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v6

    const-class v7, Lcom/android/settings/biometrics/BiometricsSplitScreenDialog;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    iput-boolean v3, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    const-string v2, "is_canceled"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const-string v6, "previous_rotation"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    :cond_2
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    iput-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v2, v0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    iget-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const-string v6, "No feature factory configured"

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v8, 0x7f0d0bee

    invoke-virtual {v2, v8, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v8

    const-string v9, "udfps_helper"

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    iput-object v8, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-nez v8, :cond_5

    new-instance v8, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {v8, v10, v11}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v8, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v8

    invoke-static {v8, v8}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v8

    iget-object v10, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    invoke-virtual {v8, v4, v10, v9, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v8, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :cond_5
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-object v8, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    iget-object v9, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v9, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v9, Landroid/view/DisplayInfo;

    invoke-direct {v9}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v10, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v10, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsUtils:Lcom/android/systemui/biometrics/UdfpsUtils;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/android/systemui/biometrics/UdfpsUtils;->getScaleFactor(Landroid/view/DisplayInfo;)F

    move-result v10

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v11

    invoke-virtual {v11}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->scale(F)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v11

    div-int/2addr v11, v5

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v15

    invoke-direct {v13, v4, v11, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v15, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v16

    iget v9, v9, Landroid/view/DisplayInfo;->rotation:I

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    move-object v11, v15

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v10

    move/from16 v17, v9

    move/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;IIFII)V

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {v1, v5}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->setOverlayParams(Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)V

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {v1, v8}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->setEnrollHelper(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;)V

    iget-boolean v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mIsLandscape:Z

    if-nez v1, :cond_6

    const v1, 0x7f0a0887

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f07139f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v5, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    const v8, 0x7f0a10aa

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    neg-int v8, v5

    invoke-virtual {v1, v4, v8, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    const v9, 0x7f0a10ab    # 1.8352E38f

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v8, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v8, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2, v1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_3

    :cond_6
    iget-boolean v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mShouldUseReverseLandscape:Z

    if-eqz v1, :cond_7

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v5, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    const v5, 0x7f0a0f50

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/view/BottomScrollView;

    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setScrollIndicators(I)V

    :cond_7
    :goto_3
    iget-object v1, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;)V

    iget-boolean v5, v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mIsLandscape:Z

    if-eqz v5, :cond_9

    const v5, 0x7f0a0f59

    goto :goto_4

    :cond_9
    const v5, 0x7f0a0f5d

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :goto_5
    invoke-virtual {v0, v2}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    const v1, 0x7f142a64

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_6

    :cond_a
    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getFingerprintFeatureProvider()Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;

    move-result-object v1

    iget-object v2, v1, Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;->mSfpsEnrollmentFeatureImpl:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;

    if-nez v2, :cond_b

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v7, v2, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v2, v1, Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;->mSfpsEnrollmentFeatureImpl:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;

    :cond_b
    iget-object v1, v1, Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;->mSfpsEnrollmentFeatureImpl:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeatureImpl;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    const v1, 0x7f0d0b2f

    invoke-virtual {v0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v1, 0x7f0a0be4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {v2, v1}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getHelpAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/Animator;

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const v1, 0x7f0d022a

    invoke-virtual {v0, v1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v1, 0x7f142a10

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsSetupWizard:Z

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    const v1, 0x7f142a0e

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_8

    :cond_f
    :goto_7
    invoke-virtual {v0, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription(Z)V

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->shouldShowLottie()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShouldShowLottie:Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v3, :cond_11

    :goto_9
    const/4 v3, 0x2

    :cond_11
    invoke-virtual {v0, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateOrientation(I)V

    const v1, 0x7f0a05dc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f0a0647

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v1, v0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v2, 0x7f1429f2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    new-instance v5, Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v8, 0x7

    const v9, 0x7f15045e

    invoke-direct {v5, v2, v3, v8, v9}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    invoke-virtual {v1, v5, v4}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v1, :cond_13

    iput-boolean v4, v0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mShouldSetFooterBarBackground:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    const v2, 0x1010054

    invoke-static {v0, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    :cond_12
    invoke-virtual {v1, v4}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->setSecondaryButtonBackground(I)V

    :cond_13
    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    :cond_14
    if-eqz v7, :cond_15

    const v1, 0x7f0a0642

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    const v1, 0x7f0a0643

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v2, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_15
    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_16

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->maybeHideSfpsText(Landroid/content/res/Configuration;)V

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsSetupWizard:Z

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getFingerprintFeatureProvider()Lcom/android/settings/biometrics/fingerprint/FingerprintFeatureProviderImpl;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_a

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_a
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public final onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->onCancelEnrollment(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    return-void
.end method

.method public final onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140f97

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError$1(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p1, :cond_3

    iget-object p2, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    if-eqz p2, :cond_3

    iget v0, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    check-cast p2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object v1, p2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v0, p1, v3}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    return-void
.end method

.method public final onEnrollmentProgressChange(II)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    sub-int p2, p1, p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f142a54

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->announceEnrollmentProgress(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription(Z)V

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f142a5f

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->announceEnrollmentProgress(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->dismissTouchDialogIfSfps()V

    return-void
.end method

.method public final onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startEnrollmentInternal()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_canceled"

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "previous_rotation"

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStart()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription(Z)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->isAnyMultiBiometricFlow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_2
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStop()V

    return-void
.end method

.method public final onUdfpsOverlayShown()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a10a9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onUdfpsPointerDown()V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mOverlayParams:Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget v0, v0, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final onUdfpsPointerUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    iget-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;->mSkipDraw:Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final shouldFinishWhenBackgrounded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowLottie()Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iget v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iget-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    aget v1, v2, v1

    iget v0, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v2

    const/4 v2, 0x0

    if-lez p0, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final shouldStartAutomatically()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsCanceled:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final showError$1(Ljava/lang/CharSequence;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHelpAnimation:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applySfpsErrorDynamicColors(Landroid/content/Context;Z)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0703c5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "::showError"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_6
    return-void
.end method

.method public final updateOrientation(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    const v1, 0x7f0a07c3

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Error unhandled configuration change"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShouldShowLottie:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateProgress(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrolling:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v1, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    iget v0, v0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x2710

    if-ne v1, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/2addr v0, v4

    div-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-ge v1, v0, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->applySfpsErrorDynamicColors(Landroid/content/Context;Z)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0703c6

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mUdfpsEnrollHelper:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    iget v5, v2, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    iget v2, v2, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    iget v6, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    if-ne v6, v3, :cond_4

    iput v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    :cond_4
    iget v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    if-eq v2, v5, :cond_5

    iget v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mLocationsEnrolled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mLocationsEnrolled:I

    invoke-virtual {v1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mCenterTouchCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mCenterTouchCount:I

    :cond_5
    iget v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    if-le v5, v2, :cond_6

    sub-int/2addr v5, v2

    iput v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mPace:I

    :cond_6
    iput v2, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mRemainingSteps:I

    iget-object v5, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mListener:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper$Listener;

    if-eqz v5, :cond_7

    iget v1, v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollHelper;->mTotalSteps:I

    if-eq v1, v3, :cond_7

    check-cast v5, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    iget-object v3, v5, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v2, v1, v7}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;III)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const-wide/16 v2, 0xfa

    if-eqz p1, :cond_9

    if-lt v0, v4, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz p0, :cond_8

    const-wide/16 v2, 0x190

    :cond_8
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_a
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-string v1, "progress"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_b
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_c

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_c
    if-lt v0, v4, :cond_d

    invoke-virtual {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;->run()V

    :cond_d
    :goto_1
    return-void

    :cond_e
    :goto_2
    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Enrollment not started yet"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateTitleAndDescription(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const v1, 0x7f142a0d

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-eqz v0, :cond_14

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz p1, :cond_5

    iget v0, p1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    if-ne v0, v7, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p1

    if-ge v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p1

    if-ge v0, p1, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p1

    if-ge v0, p1, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getStageThresholdSteps(I)I

    move-result p1

    if-ge v0, p1, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v6

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v7

    :goto_1
    const p1, 0x7f130084

    const v0, 0x7f142a0e

    const v7, 0x7f142a64

    if-eqz v2, :cond_10

    if-eq v2, v3, :cond_d

    if-eq v2, v4, :cond_c

    const p1, 0x7f142a59

    const v0, 0x7f142a66

    if-eq v2, v5, :cond_9

    if-eq v2, v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f142a14

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    invoke-virtual {p0, v7}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    const p1, 0x7f142a58

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_6
    const v2, 0x7f142a63

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsRightEdgeLottie:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsRightEdgeLottie:Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f130088

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isStageHalfCompleted()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_4

    :cond_9
    const v2, 0x7f142a5e

    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsLeftEdgeLottie:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_a

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsLeftEdgeLottie:Z

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f130087

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isStageHalfCompleted()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_4

    :cond_c
    const p1, 0x7f142a5d

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsTipLottie:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_13

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsTipLottie:Z

    const v0, 0x7f142a67

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const p1, 0x7f130089

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    iget-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsGuideLottie:Z

    if-nez v2, :cond_13

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsGuideLottie:Z

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_4

    :cond_f
    :goto_2
    const p1, 0x7f142a60

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsCenterLottie:Z

    if-nez v1, :cond_13

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownUdfpsCenterLottie:Z

    const v1, 0x7f142a51

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_4

    :cond_12
    :goto_3
    invoke-virtual {p0, v7}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :cond_13
    :goto_4
    return-void

    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeSfps:Z

    if-eqz v0, :cond_1e

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_15
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_16
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez p1, :cond_17

    goto :goto_5

    :cond_17
    iget v0, p1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    iget p1, p1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentRemaining:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getCurrentSfpsEnrollStage(ILcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;)I

    move-result v7

    :goto_5
    if-eqz v7, :cond_1c

    if-eq v7, v3, :cond_1b

    if-eq v7, v4, :cond_1a

    if-eq v7, v5, :cond_19

    if-eq v7, v6, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f142a50

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    const p1, 0x7f142a4f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_18
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v6}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getFeaturedStageHeaderResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsRightEdgeLottie:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsRightEdgeLottie:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v6}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getSfpsEnrollLottiePerStage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto/16 :goto_6

    :cond_19
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v5}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getFeaturedStageHeaderResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsLeftEdgeLottie:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsLeftEdgeLottie:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v5}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getSfpsEnrollLottiePerStage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_6

    :cond_1a
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v4}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getFeaturedStageHeaderResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsTipLottie:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsTipLottie:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v4}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getSfpsEnrollLottiePerStage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_6

    :cond_1b
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v3}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getFeaturedStageHeaderResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsCenterLottie:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsCenterLottie:Z

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v3}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getSfpsEnrollLottiePerStage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    goto :goto_6

    :cond_1c
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v2}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getFeaturedStageHeaderResource(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsNoAnimationLottie:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHaveShownSfpsNoAnimationLottie:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f142a4e

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mSfpsEnrollmentFeature:Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;

    invoke-interface {p1, v2}, Lcom/android/settings/biometrics/fingerprint/feature/SfpsEnrollmentFeature;->getSfpsEnrollLottiePerStage(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->configureEnrollmentStage(I)V

    :cond_1d
    :goto_6
    return-void

    :cond_1e
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz p1, :cond_20

    iget p1, p1, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentSteps:I

    if-ne p1, v7, :cond_1f

    goto :goto_7

    :cond_1f
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_8

    :cond_20
    :goto_7
    const p1, 0x7f142a10

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :goto_8
    return-void
.end method
