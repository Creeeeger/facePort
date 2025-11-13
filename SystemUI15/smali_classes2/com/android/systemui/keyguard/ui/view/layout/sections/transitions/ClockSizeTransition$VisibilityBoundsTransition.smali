.class public abstract Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;
.super Landroid/transition/Transition;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TRANSITION_PROPERTIES:[Ljava/lang/String;


# instance fields
.field public final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "ClockSizeTransition:Bounds"

    const-string v1, "ClockSizeTransition:SSBounds"

    const-string v2, "ClockSizeTransition:Visibility"

    const-string v3, "ClockSizeTransition:Alpha"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final createAnimator$assignAnimValues(Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/lang/Integer;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {v1, v2, p5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-static {v2, v3, p5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    float-to-int v2, v2

    iget v3, p3, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-static {v3, v4, p5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-static {p3, p4, p5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p3

    float-to-int p3, p3

    invoke-direct {v0, v1, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {p0, p1, p5}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p0

    sget-object p1, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;->Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget p4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p0, p1, p3, p4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final captureValues(Landroid/transition/TransitionValues;)V
    .locals 7

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ClockSizeTransition:Visibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "ClockSizeTransition:Alpha"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "ClockSizeTransition:Bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->getCaptureSmartspace()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const v1, 0x7f0a05c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to find smartspace equivalent target under "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-direct {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "ClockSizeTransition:SSBounds"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v2, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "ClockSizeTransition:Visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    new-instance v12, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "ClockSizeTransition:Alpha"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "ClockSizeTransition:Bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/graphics/Rect;

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "ClockSizeTransition:SSBounds"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    iget-object v14, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    iget-object v0, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    if-nez v13, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz v4, :cond_3

    move/from16 v17, v0

    goto :goto_2

    :cond_3
    move/from16 v17, v1

    :goto_2
    if-nez v2, :cond_4

    iput v1, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    goto :goto_3

    :cond_4
    iget v0, v12, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    const/4 v0, 0x4

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    move v3, v2

    :goto_4
    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    move v9, v3

    move-object v3, v15

    move v11, v4

    move-object v4, v5

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->mutateBounds(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-ne v9, v11, :cond_6

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;->Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0

    :cond_6
    if-eqz v9, :cond_7

    if-nez v11, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    sget-object v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition;->Companion:Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v6, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$predrawCallback$1;

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move/from16 v3, v17

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 p1, v11

    move-object v11, v6

    move-object v6, v15

    move-object/from16 v16, v7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$predrawCallback$1;-><init>(Landroid/animation/ValueAnimator;Lkotlin/jvm/internal/Ref$FloatRef;FLcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$1;

    invoke-direct {v0, v14, v11}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v8, v0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    new-instance v11, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$listener$1;

    move-object v0, v11

    move-object v1, v10

    move v8, v13

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition$createAnimator$1$listener$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;FLcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/4 v1, 0x0

    move/from16 v13, v17

    move/from16 v17, v1

    invoke-static/range {v12 .. v18}, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->createAnimator$assignAnimValues(Lkotlin/jvm/internal/Ref$FloatRef;FLandroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FLjava/lang/Integer;)V

    return-object v0

    :cond_8
    :goto_6
    iget-object v2, v8, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t create animator: startValues="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; endValues="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public abstract getCaptureSmartspace()Z
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/ui/view/layout/sections/transitions/ClockSizeTransition$VisibilityBoundsTransition;->TRANSITION_PROPERTIES:[Ljava/lang/String;

    return-object p0
.end method

.method public mutateBounds(ZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method
