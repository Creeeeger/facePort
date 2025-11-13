.class public final Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

.field public final synthetic $drawHole:Z

.field public final synthetic $endBottom:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endBottomCornerRadius:F

.field public final synthetic $endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic $endLeft:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endRight:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endState:Lcom/android/systemui/animation/TransitionAnimator$State;

.field public final synthetic $endTop:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $endTopCornerRadius:F

.field public final synthetic $endWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $fadeWindowBackgroundLayer:Z

.field public final synthetic $moveBackgroundLayerWhenAppVisibilityChanges:Z

.field public final synthetic $movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $openingWindowSyncView:Landroid/view/View;

.field public final synthetic $openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

.field public final synthetic $startBottom:I

.field public final synthetic $startBottomCornerRadius:F

.field public final synthetic $startCenterX:F

.field public final synthetic $startTop:I

.field public final synthetic $startTopCornerRadius:F

.field public final synthetic $startWidth:I

.field public final synthetic $state:Lcom/android/systemui/animation/TransitionAnimator$State;

.field public final synthetic $transitionContainer:Landroid/view/ViewGroup;

.field public final synthetic $transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

.field public final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic this$0:Lcom/android/systemui/animation/TransitionAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/TransitionAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/TransitionAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFLcom/android/systemui/animation/TransitionAnimator$Controller;ZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;ZZLcom/android/systemui/animation/TransitionAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    move v1, p2

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startCenterX:F

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    move v1, p4

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startWidth:I

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    move v1, p7

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startTop:I

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p9

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startBottom:I

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    move v1, p11

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startTopCornerRadius:F

    move v1, p12

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endTopCornerRadius:F

    move v1, p13

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startBottomCornerRadius:F

    move/from16 v1, p14

    iput v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endBottomCornerRadius:F

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$moveBackgroundLayerWhenAppVisibilityChanges:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainer:Landroid/view/ViewGroup;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncView:Landroid/view/View;

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$fadeWindowBackgroundLayer:Z

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$drawHole:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endState:Lcom/android/systemui/animation/TransitionAnimator$State;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v2, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endState:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v7, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    sget-object v8, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    iget v8, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v9, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_0

    iget v8, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    if-ne v8, v11, :cond_0

    iget v8, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    if-ne v8, v11, :cond_0

    iget v8, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v11, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    if-eq v8, v11, :cond_1

    :cond_0
    iput v9, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iput v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iput v1, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v2, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iput v1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int v3, v2, v1

    int-to-float v3, v3

    div-float/2addr v3, v10

    iput v3, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-int/2addr v1, v2

    iput v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v2, v2, Lcom/android/systemui/animation/TransitionAnimator;->interpolators:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    iget-object v2, v2, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v3, v3, Lcom/android/systemui/animation/TransitionAnimator;->interpolators:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    iget-object v3, v3, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->positionXInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startCenterX:F

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iget v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startWidth:I

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v4

    div-float/2addr v4, v10

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v6, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startTop:I

    iget-object v7, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v6, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startBottom:I

    iget-object v7, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v6, v7, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v6

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    sub-float v6, v3, v4

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget-object v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    add-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    iput v3, v5, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startTopCornerRadius:F

    iget v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endTopCornerRadius:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$startBottomCornerRadius:F

    iget v5, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$endBottomCornerRadius:F

    invoke-static {v4, v5, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    iput v4, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v4}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    iget-object v8, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v11, v8, Lcom/android/systemui/animation/TransitionAnimator;->timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v13, v11, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, v11, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    move v12, v1

    move-wide v15, v8

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :goto_0
    move v4, v7

    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    iget-object v8, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v11, v8, Lcom/android/systemui/animation/TransitionAnimator;->timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v13, v11, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, v11, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    move v12, v1

    move-wide v15, v8

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    goto :goto_0

    :goto_1
    iput-boolean v4, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$moveBackgroundLayerWhenAppVisibilityChanges:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-boolean v3, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_4

    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainer:Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncView:Landroid/view/View;

    sget-object v9, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2$1;->INSTANCE:Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v8, v9}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$moveBackgroundLayerWhenAppVisibilityChanges:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-boolean v3, v3, Lcom/android/systemui/animation/TransitionAnimator$State;->visible:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_5

    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncView:Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$transitionContainer:Landroid/view/ViewGroup;

    sget-object v9, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2$2;->INSTANCE:Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2$2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v8, v9}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$openingWindowSyncView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v3}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v3

    :goto_3
    iget-object v4, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->this$0:Lcom/android/systemui/animation/TransitionAnimator;

    iget-object v8, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    iget-object v9, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    iget-boolean v10, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$fadeWindowBackgroundLayer:Z

    iget-boolean v15, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$drawHole:Z

    iget-object v11, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    invoke-interface {v11}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v17

    iget-object v11, v4, Lcom/android/systemui/animation/TransitionAnimator;->transitionContainerLocation:[I

    invoke-virtual {v3, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v3, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    aget v12, v11, v6

    sub-int/2addr v3, v12

    iget v13, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    aget v11, v11, v7

    sub-int/2addr v13, v11

    iget v14, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    sub-int/2addr v14, v12

    iget v12, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    sub-int/2addr v12, v11

    invoke-virtual {v8, v3, v13, v14, v12}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget v3, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget-object v11, v4, Lcom/android/systemui/animation/TransitionAnimator;->cornerRadii:[F

    aput v3, v11, v6

    aput v3, v11, v7

    const/4 v6, 0x2

    aput v3, v11, v6

    const/4 v6, 0x3

    aput v3, v11, v6

    iget v3, v9, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    const/4 v6, 0x4

    aput v3, v11, v6

    const/4 v6, 0x5

    aput v3, v11, v6

    const/4 v6, 0x6

    aput v3, v11, v6

    const/4 v6, 0x7

    aput v3, v11, v6

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v3, v4, Lcom/android/systemui/animation/TransitionAnimator;->timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v13, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDelay:J

    sget-object v6, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentBeforeFadeOutDuration:J

    move-wide/from16 v18, v11

    move-object v11, v3

    move v12, v1

    move v6, v15

    move-wide/from16 v15, v18

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v9

    iget-object v4, v4, Lcom/android/systemui/animation/TransitionAnimator;->interpolators:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    const/16 v15, 0xff

    if-eqz v17, :cond_9

    cmpg-float v5, v9, v5

    if-gez v5, :cond_7

    iget-object v3, v4, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v4, v15

    mul-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto/16 :goto_4

    :cond_7
    if-eqz v10, :cond_8

    iget-wide v9, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    iget-wide v13, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    move-object v11, v3

    move v12, v1

    move v3, v15

    move-wide v15, v9

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v5

    int-to-float v7, v7

    iget-object v4, v4, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v7, v4

    int-to-float v3, v3

    mul-float/2addr v7, v3

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    if-eqz v6, :cond_b

    sget-object v3, Lcom/android/systemui/animation/TransitionAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    goto :goto_4

    :cond_8
    move v3, v15

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_4

    :cond_9
    cmpg-float v5, v9, v5

    if-gez v5, :cond_a

    if-eqz v10, :cond_a

    iget-object v3, v4, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentBeforeFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v4, v15

    mul-float/2addr v3, v4

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    if-eqz v6, :cond_b

    sget-object v3, Lcom/android/systemui/animation/TransitionAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    goto :goto_4

    :cond_a
    iget-wide v5, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDuration:J

    iget-wide v13, v3, Lcom/android/systemui/animation/TransitionAnimator$Timings;->contentAfterFadeInDelay:J

    move-object v11, v3

    move v12, v1

    move v3, v15

    move-wide v15, v5

    invoke-static/range {v11 .. v16}, Lcom/android/systemui/animation/TransitionAnimator$Companion;->getProgress(Lcom/android/systemui/animation/TransitionAnimator$Timings;FJJ)F

    move-result v5

    int-to-float v6, v7

    iget-object v4, v4, Lcom/android/systemui/animation/TransitionAnimator$Interpolators;->contentAfterFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v6, v4

    int-to-float v3, v3

    mul-float/2addr v6, v3

    invoke-static {v6}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    :cond_b
    :goto_4
    iget-object v3, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$controller:Lcom/android/systemui/animation/TransitionAnimator$Controller;

    iget-object v0, v0, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;->$state:Lcom/android/systemui/animation/TransitionAnimator$State;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->onTransitionAnimationProgress(Lcom/android/systemui/animation/TransitionAnimator$State;FF)V

    return-void
.end method
