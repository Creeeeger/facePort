.class public final Lcom/android/keyguard/KeyguardSecurityViewTransition;
.super Landroid/transition/Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SEC_SECURITY_SHIFT_ANIMATION_DURATION_MS:J

.field public final transitionPathInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewTransition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewTransition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const-wide/16 v0, 0x1c2

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition;->SEC_SECURITY_SHIFT_ANIMATION_DURATION_MS:J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewTransition;->transitionPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static captureValues(Landroid/transition/TransitionValues;)V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "securityViewLocation:bounds"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityViewTransition;->captureValues(Landroid/transition/TransitionValues;)V

    :cond_0
    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecurityViewTransition;->captureValues(Landroid/transition/TransitionValues;)V

    :cond_0
    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10c001a

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    sget-object v12, Lcom/android/app/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    sget-object v15, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/animation/ValueAnimator;

    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v7, :cond_1

    iget-wide v9, v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;->SEC_SECURITY_SHIFT_ANIMATION_DURATION_MS:J

    goto :goto_0

    :cond_1
    const-wide/16 v9, 0x1f4

    :goto_0
    invoke-virtual {v6, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityViewTransition;->transitionPathInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "securityViewLocation:bounds"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/graphics/Rect;

    iget-object v0, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/Rect;

    iget-object v13, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v0, 0x1

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    div-int/2addr v1, v2

    iput v1, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-eq v1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v13, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v14

    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;

    invoke-direct {v2, v5, v0, v13}, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lcom/android/keyguard/KeyguardSecurityViewTransition$createAnimator$2;-><init>(Landroid/view/animation/Interpolator;Lkotlin/jvm/internal/Ref$IntRef;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/animation/Interpolator;Landroid/view/View;FLandroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/animation/Animator;

    return-object v0

    :cond_7
    :goto_4
    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    const-string p0, "securityViewLocation:bounds"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
