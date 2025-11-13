.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public dependencyOriginalTranslationX:F

.field public dependencyOriginalTranslationY:F

.field public final tmpArray:[I

.field public final tmpRect:Landroid/graphics/Rect;

.field public final tmpRectF1:Landroid/graphics/RectF;

.field public final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public static calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_4

    cmpl-float p0, p1, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_3

    :cond_2
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p1, "translationXCurveUpwards"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p2, "translationYCurveUpwards"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p1, "translationXCurveDownwards"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p2, "translationYCurveDownwards"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p1, "translationXLinear"

    invoke-virtual {p0, p1}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-object p1, p3, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string/jumbo p2, "translationYLinear"

    invoke-virtual {p1, p2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    :goto_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F
    .locals 6

    iget-wide v0, p1, Lcom/google/android/material/animation/MotionTiming;->delay:J

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "expansion"

    invoke-virtual {p0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p0

    iget-wide v2, p0, Lcom/google/android/material/animation/MotionTiming;->delay:J

    iget-wide v4, p0, Lcom/google/android/material/animation/MotionTiming;->duration:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x11

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-float p0, v2

    iget-wide v0, p1, Lcom/google/android/material/animation/MotionTiming;->duration:J

    long-to-float v0, v0

    div-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p2, p1, p0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p0, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p0, p0, 0x7

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->right:F

    iget p1, v0, Landroid/graphics/RectF;->right:F

    :goto_0
    sub-float/2addr p0, p1

    goto :goto_1

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->left:F

    iget p1, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    goto :goto_0

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method public final calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget p0, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p0, p0, 0x70

    const/16 p1, 0x10

    if-eq p0, p1, :cond_2

    const/16 p1, 0x30

    if-eq p0, p1, :cond_1

    const/16 p1, 0x50

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget p0, v1, Landroid/graphics/RectF;->bottom:F

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    :goto_0
    sub-float/2addr p0, p1

    goto :goto_1

    :cond_1
    iget p0, v1, Landroid/graphics/RectF;->top:F

    iget p1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_0

    :goto_1
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr p0, p1

    return p0
.end method

.method public final calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    int-to-float p0, p0

    invoke-virtual {p2, v0, p0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    float-to-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public final layoutDependsOn(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    instance-of p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p0, p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->expandableWidgetHelper:Lcom/google/android/material/expandable/ExpandableWidgetHelper;

    iget p0, p0, Lcom/google/android/material/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    iget p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_0

    const/16 p0, 0x50

    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method public final onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v6

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iput v7, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result v9

    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result v10

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    if-nez p4, :cond_1

    neg-float v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v5, [F

    aput v10, v11, v4

    invoke-static {v2, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto :goto_0

    :cond_2
    sget-object v11, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    neg-float v9, v9

    new-array v12, v5, [F

    aput v9, v12, v4

    invoke-static {v2, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :goto_0
    iget-object v11, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v12, "elevation"

    invoke-virtual {v11, v12}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v11, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v11

    iget-object v12, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v12

    invoke-static {v11, v12, v3, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v13

    iget-object v14, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/material/animation/MotionTiming;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    if-eqz v3, :cond_4

    if-nez p4, :cond_3

    neg-float v15, v11

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationX(F)V

    neg-float v15, v12

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v16, v8

    new-array v8, v5, [F

    aput v10, v8, v4

    invoke-static {v2, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v17, v8

    new-array v8, v5, [F

    aput v10, v8, v4

    invoke-static {v2, v15, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    neg-float v11, v11

    neg-float v12, v12

    invoke-static {v6, v14, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F

    move-result v11

    invoke-static {v6, v13, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;F)F

    move-result v12

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    invoke-virtual {v10, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v15, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v15, v10}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v9, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v10, v8

    move-object/from16 v8, v17

    goto :goto_1

    :cond_4
    move-object/from16 v16, v8

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    neg-float v10, v11

    new-array v11, v5, [F

    aput v10, v11, v4

    invoke-static {v2, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-float v11, v12

    new-array v12, v5, [F

    aput v11, v12, v4

    invoke-static {v2, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    :goto_1
    invoke-virtual {v14, v8}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v13, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v10, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-virtual {v0, v1, v2, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v10

    iget-object v11, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-virtual {v0, v1, v2, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v11

    invoke-static {v10, v11, v3, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateMotionTiming(FFZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;)Landroid/util/Pair;

    move-result-object v12

    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/material/animation/MotionTiming;

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/material/animation/MotionTiming;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    :goto_2
    new-array v15, v5, [F

    aput v10, v15, v4

    invoke-static {v1, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget v11, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    :goto_3
    new-array v15, v5, [F

    aput v11, v15, v4

    invoke-static {v1, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v13, v10}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v12, v11}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v10, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v10, :cond_8

    instance-of v11, v1, Landroid/widget/ImageView;

    if-nez v11, :cond_7

    goto :goto_4

    :cond_7
    move-object v11, v2

    check-cast v11, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_9

    :cond_8
    :goto_4
    move-object/from16 v11, v16

    goto :goto_6

    :cond_9
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v13, 0xff

    if-eqz v3, :cond_b

    if-nez p4, :cond_a

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    sget-object v13, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lcom/google/android/material/animation/DrawableAlphaProperty;

    filled-new-array {v4}, [I

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    goto :goto_5

    :cond_b
    sget-object v14, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Lcom/google/android/material/animation/DrawableAlphaProperty;

    filled-new-array {v13}, [I

    move-result-object v13

    invoke-static {v12, v14, v13}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    :goto_5
    new-instance v14, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {v14, v0, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v14, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v15, "iconFade"

    invoke-virtual {v14, v15}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {v13, v0, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v11, v16

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    if-nez v10, :cond_c

    move-object/from16 v19, v6

    move-object v4, v7

    move/from16 v18, v10

    move-object v5, v11

    goto/16 :goto_a

    :cond_c
    move-object v12, v2

    check-cast v12, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    iget-object v13, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v5, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    iget v4, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v14, v5, v4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v4

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v5, v15, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget-object v5, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    iget-object v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    iget-object v14, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    iget v15, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationX:F

    move/from16 v18, v10

    iget v10, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->dependencyOriginalTranslationY:F

    invoke-virtual {v13, v15, v10}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v0, v2, v14}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v5

    neg-float v5, v5

    const/4 v10, 0x0

    invoke-virtual {v14, v10, v5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v10, v14, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v10

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v13, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/view/View;->isLaidOut()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getHeight()I

    move-result v15

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v10, v13}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->offsetRectWithShadow(Landroid/graphics/Rect;)V

    :cond_d
    iget-object v1, v0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v1, v10

    iget-object v10, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v13, "expansion"

    invoke-virtual {v10, v13}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v10

    if-eqz v3, :cond_11

    if-nez p4, :cond_e

    new-instance v15, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v15, v4, v5, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v12, v15}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    :cond_e
    if-eqz p4, :cond_f

    invoke-interface {v12}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    :cond_f
    invoke-static {v4, v5, v8, v9}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFF)F

    move-result v8

    invoke-static {v12, v4, v5, v8}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v8

    new-instance v9, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    invoke-direct {v9, v0, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v13, v10, Lcom/google/android/material/animation/MotionTiming;->delay:J

    float-to-int v4, v4

    float-to-int v5, v5

    move-object v15, v8

    const-wide/16 v8, 0x0

    cmp-long v19, v13, v8

    if-lez v19, :cond_10

    invoke-static {v2, v4, v5, v1, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v19, v6

    move-object v4, v7

    move-object/from16 v21, v12

    move-object v8, v15

    move-object v15, v11

    goto/16 :goto_9

    :cond_11
    invoke-interface {v12}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v8

    iget v8, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    invoke-static {v12, v4, v5, v1}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v9

    iget-wide v13, v10, Lcom/google/android/material/animation/MotionTiming;->delay:J

    float-to-int v4, v4

    float-to-int v5, v5

    move-object v15, v11

    move-object/from16 v21, v12

    const-wide/16 v11, 0x0

    cmp-long v19, v13, v11

    if-lez v19, :cond_12

    invoke-static {v2, v4, v5, v8, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v8, v13, v14}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v8, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    iget-object v8, v8, Lcom/google/android/material/animation/MotionSpec;->timings:Landroidx/collection/SimpleArrayMap;

    iget v13, v8, Landroidx/collection/SimpleArrayMap;->size:I

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_13

    invoke-virtual {v8, v14}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    check-cast v8, Lcom/google/android/material/animation/MotionTiming;

    move-object/from16 v19, v6

    move-object/from16 v22, v7

    iget-wide v6, v8, Lcom/google/android/material/animation/MotionTiming;->delay:J

    move-object/from16 v23, v9

    iget-wide v8, v8, Lcom/google/android/material/animation/MotionTiming;->duration:J

    add-long/2addr v6, v8

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    const/4 v6, 0x1

    add-int/2addr v14, v6

    move-object/from16 v6, v19

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v9, v23

    goto :goto_7

    :cond_13
    move-object/from16 v19, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v9

    iget-wide v6, v10, Lcom/google/android/material/animation/MotionTiming;->delay:J

    iget-wide v8, v10, Lcom/google/android/material/animation/MotionTiming;->duration:J

    add-long/2addr v6, v8

    cmp-long v8, v6, v11

    if-gez v8, :cond_14

    invoke-static {v2, v4, v5, v1, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v11, v6

    invoke-virtual {v1, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v4, v22

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    move-object/from16 v4, v22

    :goto_8
    move-object/from16 v8, v23

    :goto_9
    invoke-virtual {v10, v8}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    move-object/from16 v5, v21

    invoke-direct {v1, v5}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    move-object v5, v15

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    if-nez v18, :cond_15

    move-object/from16 v6, v19

    goto :goto_d

    :cond_15
    move-object v1, v2

    check-cast v1, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat$Api21Impl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    :goto_b
    const v7, 0xffffff

    and-int/2addr v7, v6

    if-eqz v3, :cond_18

    if-nez p4, :cond_17

    invoke-interface {v1, v6}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    :cond_17
    sget-object v6, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_c

    :cond_18
    sget-object v7, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-static {v1, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_c
    sget-object v6, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->instance:Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    move-object/from16 v6, v19

    iget-object v7, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v8, "color"

    invoke-virtual {v7, v8}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d
    instance-of v1, v2, Landroid/view/ViewGroup;

    if-nez v1, :cond_19

    :goto_e
    const/4 v11, 0x0

    goto/16 :goto_12

    :cond_19
    const v7, 0x7f0a0795

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1a

    instance-of v1, v7, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d

    move-object v8, v7

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_10

    :cond_1a
    instance-of v7, v2, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v7, :cond_1c

    instance-of v7, v2, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v7, :cond_1b

    goto :goto_f

    :cond_1b
    if-eqz v1, :cond_1d

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_10

    :cond_1c
    :goto_f
    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1d

    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    :cond_1d
    :goto_10
    if-nez v8, :cond_1e

    goto :goto_e

    :cond_1e
    if-eqz v3, :cond_20

    if-nez p4, :cond_1f

    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Lcom/google/android/material/animation/ChildrenAlphaProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    const/4 v7, 0x1

    new-array v9, v7, [F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    aput v10, v9, v11

    invoke-static {v8, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11

    :cond_20
    const/4 v7, 0x1

    const/4 v11, 0x0

    sget-object v1, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Lcom/google/android/material/animation/ChildrenAlphaProperty;

    new-array v9, v7, [F

    const/4 v7, 0x0

    aput v7, v9, v11

    invoke-static {v8, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_11
    iget-object v6, v6, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "contentFade"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v1, v4}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v4, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v6, p1

    invoke-direct {v4, v0, v3, v2, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v11

    :goto_13
    if-ge v4, v0, :cond_21

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x1

    add-int/2addr v4, v2

    goto :goto_13

    :cond_21
    return-object v1
.end method

.method public abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
