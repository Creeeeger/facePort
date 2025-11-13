.class public final Lcom/android/systemui/volume/view/VolumePanelMotion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public context:Landroid/content/Context;

.field public singleShowSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/volume/view/VolumePanelMotion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/VolumePanelMotion$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->HIDE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/VolumePanelMotion;->TITLE_TRANSLATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/store/StoreInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/android/systemui/volume/store/StoreInteractor;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeObserver;Lcom/android/systemui/volume/store/VolumePanelStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/systemui/volume/view/VolumePanelMotion;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    return-void
.end method

.method public static getSeekBarKeyDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarKeyDownAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarKeyDownAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43fa0000    # 500.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static getSeekBarKeyUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarKeyUpAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarKeyUpAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static getSeekBarTouchDownAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarTouchDownAnimation$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarTouchDownAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x43b98000    # 371.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static getSeekBarTouchUpAnimation(Landroid/view/View;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 2

    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarTouchUpAnimation$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/VolumePanelMotion$getSeekBarTouchUpAnimation$1$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x43b98000    # 371.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)V

    iput-object p0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    return-object v0
.end method

.method public static getSettingButtonRotateAnimation(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v3

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/high16 v5, -0x3d4c0000    # -90.0f

    :goto_0
    new-array v6, v0, [F

    aput v3, v6, v2

    aput v5, v6, v1

    const-string/jumbo v3, "rotation"

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x190

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/systemui/volume/view/VolumePanelMotion;->SETTING_BUTTON_ROTATION_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_1
    new-array v0, v0, [F

    aput v5, v0, v2

    aput v4, v0, v1

    const-string v4, "alpha"

    invoke-static {p0, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v1, [Landroid/animation/Animator;

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_2

    const/16 v2, 0x32

    :cond_2
    int-to-long p0, v2

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method public static startSeekBarTouchUpAnimation(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method
