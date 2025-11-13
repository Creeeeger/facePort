.class public final Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/TransitionAnimator$Controller;


# instance fields
.field public final isLaunching:Z

.field public final rootLocationOnScreen:[I

.field public final synthetic this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

.field public transitionContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/ExpandableControllerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->rootLocationOnScreen:[I

    iget-object p1, p1, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->transitionContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->isLaunching:Z

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object v5, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->boundsInComposeViewRoot:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v6

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v6

    iget-object v8, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v9, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v10, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v8, v6, v7, v9, v10}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v6

    instance-of v7, v6, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    instance-of v7, v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v7, :cond_3

    check-cast v6, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v6, v6, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v7, v6, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v7

    iget-wide v8, v6, Landroidx/compose/ui/geometry/RoundRect;->topLeftCornerRadius:J

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v8

    iget-wide v9, v6, Landroidx/compose/ui/geometry/RoundRect;->topRightCornerRadius:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v11

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v9

    new-array v10, v1, [F

    aput v8, v10, v2

    aput v11, v10, v3

    aput v9, v10, v0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_1

    aget v9, v10, v8

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/2addr v8, v3

    goto :goto_0

    :cond_1
    iget-wide v8, v6, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v10

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v8

    iget-wide v11, v6, Landroidx/compose/ui/geometry/RoundRect;->bottomRightCornerRadius:J

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v6

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v9

    new-array v11, v1, [F

    aput v8, v11, v2

    aput v6, v11, v3

    aput v9, v11, v0

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_2

    aget v6, v11, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v12

    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v13

    iget-object v0, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->composeViewRoot:Landroid/view/View;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->rootLocationOnScreen:[I

    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, v4, Lcom/android/compose/animation/ExpandableControllerImpl;->boundsInComposeViewRoot:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    aget v1, p0, v2

    int-to-float v1, v1

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->left:F

    add-float/2addr v1, v2

    aget p0, p0, v3

    int-to-float p0, p0

    iget v0, v0, Landroidx/compose/ui/geometry/Rect;->top:F

    add-float/2addr p0, v0

    invoke-static {v1, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    new-instance p0, Lcom/android/systemui/animation/TransitionAnimator$State;

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v3

    add-float/2addr v3, v2

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v9

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-virtual {v5}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v11

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ExpandableState only supports (rounded) rectangles at the moment."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTransitionContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->transitionContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final isLaunching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->isLaunching:Z

    return p0
.end method

.method public final onTransitionAnimationEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->animatorState:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V
    .locals 7

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->this$0:Lcom/android/compose/animation/ExpandableControllerImpl;

    iget-object p2, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->animatorState:Landroidx/compose/runtime/MutableState;

    new-instance p3, Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v1, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget v2, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget v3, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget v4, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iget v5, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v6, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/TransitionAnimator$State;-><init>(IIIIFF)V

    iget-boolean v0, p1, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    iput-boolean v0, p3, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    invoke-interface {p2, p3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerImpl;->currentComposeViewInOverlay:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/compose/animation/ExpandableKt;->measureAndLayoutComposeViewInOverlay(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)V

    :cond_0
    return-void
.end method

.method public final setTransitionContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerImpl$transitionController$1;->transitionContainer:Landroid/view/ViewGroup;

    return-void
.end method
