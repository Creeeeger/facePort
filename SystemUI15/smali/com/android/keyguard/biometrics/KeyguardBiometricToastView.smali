.class public Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static mToastIconFrom:F = 1.28f


# instance fields
.field public final mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mAssetName:Ljava/lang/String;

.field public mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

.field public mBodyAnimator:Landroid/animation/ValueAnimator;

.field public mCurrentToastViewWidth:I

.field public final mHandler:Landroid/os/Handler;

.field public mIsAnimating:Z

.field public mIsBackgroundAuth:Z

.field public mIsShowing:Z

.field public mToastBodyView:Landroid/widget/LinearLayout;

.field public mToastGuideText:Landroid/widget/TextView;

.field public mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mToastLockIconWidth:I

.field public mToastRoot:Landroid/widget/FrameLayout;

.field public mToastViewMinWidth:I

.field public mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimHandler:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;

    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$3;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final dismiss(Z)V
    .locals 6

    const/4 v0, 0x2

    const-string v1, "dismiss() , force = "

    const-string v2, "KeyguardBiometricToastView"

    invoke-static {v1, v2, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBiometricToastViewStateUpdater:Ljava/util/function/Consumer;

    if-eqz p0, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->shouldDisappearLockIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    sget p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->scaleIconAnim(FF)V

    sget-object p1, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->changeTextAnim(FFLcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    :cond_4
    iput-boolean v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    new-array v4, v0, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object v2, v0, p1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final hasGuideText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0d44

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0d41

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130871

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070522

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070523

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    const v2, 0x7f070526

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastViewMinWidth:I

    const v2, 0x7f07052e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    sput v2, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIconFrom:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mBodyAnimator:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsAnimating:Z

    return-void
.end method

.method public final scaleIconAnim(FF)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastIcon:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput p1, v6, v4

    aput p2, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->shouldDisappearLockIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v6, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x15e

    :goto_0
    invoke-virtual {p2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, v2, [Landroid/animation/Animator;

    aput-object v0, p0, v4

    aput-object p1, p0, v5

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final setViewAttribution(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_1

    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v6, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v6, v6, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const v6, 0x7f070527

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    int-to-double v5, v5

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v5, v8

    double-to-int v5, v5

    :goto_1
    iget v6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    sub-int/2addr v5, v6

    const v6, 0x7f070526

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v5, v8

    const v8, 0x7f070525

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastLockIconWidth:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mCurrentToastViewWidth:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v3}, Landroid/widget/TextView;->measure(II)V

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v2, :cond_2

    div-int/2addr v4, v2

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v4

    if-le v5, v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f07052a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-ge v4, v6, :cond_3

    move v4, v6

    :cond_3
    mul-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07052b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/2addr v5, v7

    add-int/2addr v5, v4

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const v4, 0x7f070522

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const v6, 0x7f070524

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    const v6, 0x7f07052e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v7, :cond_4

    goto :goto_2

    :cond_4
    const v3, 0x7f070591

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_2
    float-to-int v4, v4

    sub-int/2addr v3, v4

    const v4, 0x7f07148f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eqz p1, :cond_5

    const p1, 0x7f070547

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p1, v4

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastBodyView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final shouldDisappearLockIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final update(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;Ljava/lang/String;ZZZ)V
    .locals 8

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update toast contents = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , already showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , backgroundAuth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardBiometricToastView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string/jumbo v3, "unlock_icon.json"

    const-string/jumbo v4, "unlock_fail_icon.json"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v3, ""

    :goto_0
    move v1, v5

    goto :goto_2

    :pswitch_0
    const v1, 0x7f1308aa

    :goto_1
    move-object v3, v4

    goto :goto_2

    :pswitch_1
    const v1, 0x7f1308dd

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f13086d

    goto :goto_2

    :cond_0
    const v1, 0x7f13086c

    goto :goto_2

    :pswitch_3
    move-object v3, v4

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f13086f

    goto :goto_2

    :cond_1
    const v1, 0x7f130872

    :goto_2
    if-eqz p4, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string/jumbo v3, "unlock_fail_icon_lock_stay.json"

    :cond_2
    iput-boolean p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsBackgroundAuth:Z

    sget-object p4, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;->Authenticating:Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;

    if-eq p1, p4, :cond_b

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->reset()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p0, "Toast view text is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mIsShowing:Z

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez p5, :cond_5

    const-string p5, "Root view is null"

    invoke-static {v2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06005e

    invoke-virtual {v6, v7, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p5, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_3
    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    if-nez p5, :cond_6

    const-string p2, "Text view is null"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    sget-boolean p5, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p5, :cond_8

    sget-object p5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p5, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p5, p5, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz p5, :cond_7

    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_7
    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    if-ne p5, v0, :cond_9

    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_9
    :goto_4
    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f06005f

    invoke-virtual {v2, v4, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    invoke-virtual {p5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->hasGuideText()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0, p3}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->setViewAttribution(Z)V

    :cond_a
    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastRoot:Landroid/widget/FrameLayout;

    new-array p3, v0, [F

    fill-array-data p3, :array_0

    const-string p5, "alpha"

    invoke-static {p2, p5, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mToastGuideText:Landroid/widget/TextView;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {p3, p5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v1, 0x64

    invoke-virtual {p3, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance p5, Landroid/animation/AnimatorSet;

    invoke-direct {p5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v5

    aput-object p3, v0, p4

    invoke-virtual {p5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p3, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;

    invoke-direct {p3, p0, v3, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$2;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;Ljava/lang/String;Lcom/android/keyguard/biometrics/KeyguardBiometricToastView$ToastType;)V

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricToastView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
