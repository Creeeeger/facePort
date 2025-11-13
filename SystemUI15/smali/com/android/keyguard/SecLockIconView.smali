.class public Lcom/android/keyguard/SecLockIconView;
.super Lcom/android/keyguard/LockIconView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimTranslationX:Landroid/animation/ObjectAnimator;

.field public final mDrawableCache:Landroid/util/SparseArray;

.field public mIsLockStarEnabled:Z

.field public mIsOneHandModeEnabled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

.field public mlockIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/LockIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final initBiometricErrorIndicationAnimationValue(Ljava/lang/Object;ZLjava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v2, p1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/keyguard/SecLockIconView;->mIsLockStarEnabled:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_5

    iget-boolean v3, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz p1, :cond_6

    iget-boolean v3, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_6
    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v0, v0, [F

    aput p1, v0, v1

    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1, p1, v2, p2}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/keyguard/SecLockIconView$1;

    invoke-direct {p2, p0, p3}, Lcom/android/keyguard/SecLockIconView$1;-><init>(Lcom/android/keyguard/SecLockIconView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43160000    # 150.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const p2, 0x3ef5c28f    # 0.48f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {p2, p3, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p3, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {p2, p3, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :goto_3
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0aa9

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final showBiometricErrorAnimation(Ljava/lang/Object;FLcom/android/systemui/vibrate/VibrationUtil;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Ljava/lang/Object;ZLjava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f07052e

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/4 v3, 0x1

    new-array v3, v3, [F

    aput p1, v3, v0

    invoke-static {p2, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    const p2, 0x3ecccccd    # 0.4f

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v2, v3, p1}, Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticOutline0;->m(FFFFLandroid/animation/ObjectAnimator;)V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mAnimTranslationX:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    const p2, 0x3f3851ec    # 0.72f

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 p2, 0x43160000    # 150.0f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const p2, 0x3ef5c28f    # 0.48f

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {p2, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mlockIcon:Landroid/view/View;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {p2, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p1, p2, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object p2, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleXAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mScaleYAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 p2, 0x72

    if-eqz p1, :cond_4

    const-string p1, "background"

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const-string/jumbo v2, "unlock_fail_icon.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    new-instance v4, Lcom/airbnb/lottie/value/LottieValueCallback;

    new-instance v5, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz p1, :cond_2

    const p1, 0x7f06005f

    goto :goto_0

    :cond_2
    const p1, 0x7f060546

    :goto_0
    invoke-virtual {v6, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-direct {v5, p1}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    :cond_3
    iput-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mLottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, p2}, Lcom/android/systemui/vibrate/VibrationUtil;->playVibration(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final updateLockIconViewLayoutParams(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForcedLock()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070546

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070547

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDisplayPolicyAllowed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7f07052e

    goto :goto_1

    :cond_4
    :goto_0
    const v1, 0x7f07052d

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v1, 0x0

    :goto_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/keyguard/SecLockIconView;->mSecLockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconView;->mIsOneHandModeEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0101d2

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    :goto_0
    return-void
.end method
