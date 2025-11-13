.class public final Lcom/android/systemui/animation/TransitionAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

.field public static final SRC_MODE:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public final cornerRadii:[F

.field public final interpolators:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

.field public final transitionContainerLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/TransitionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/TransitionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/systemui/animation/TransitionAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/animation/TransitionAnimator$Timings;Lcom/android/systemui/animation/TransitionAnimator$Interpolators;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/animation/TransitionAnimator;->timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iput-object p3, p0, Lcom/android/systemui/animation/TransitionAnimator;->interpolators:Lcom/android/systemui/animation/TransitionAnimator$Interpolators;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator;->transitionContainerLocation:[I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/animation/TransitionAnimator;->cornerRadii:[F

    return-void
.end method


# virtual methods
.method public final createAnimator(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$State;Landroid/graphics/drawable/GradientDrawable;ZZ)Landroid/animation/ValueAnimator;
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v15, p2

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/TransitionAnimator$State;

    move-result-object v6

    iget v7, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iget v9, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iget v0, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iget v2, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    add-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-int v5, v2, v0

    iget v11, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v13, v6, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v14, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    iput v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v12, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    new-instance v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget v0, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object/from16 v16, v2

    iget v2, v14, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v2

    iput v0, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->topCornerRadius:F

    iget v0, v15, Lcom/android/systemui/animation/TransitionAnimator$State;->bottomCornerRadius:F

    move-object/from16 v19, v14

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v14

    invoke-virtual {v1, v14, v15}, Lcom/android/systemui/animation/TransitionAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__PlatformAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)Z

    move-result v22

    move/from16 v27, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move/from16 v28, v2

    iget-object v2, v1, Lcom/android/systemui/animation/TransitionAnimator;->timings:Lcom/android/systemui/animation/TransitionAnimator$Timings;

    iget-wide v1, v2, Lcom/android/systemui/animation/TransitionAnimator$Timings;->totalDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v29

    if-eqz v29, :cond_0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    :goto_0
    move-object/from16 v30, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v29, :cond_1

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->getTransitionContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    move/from16 v31, v1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v24

    move-object/from16 v18, v24

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v17, v1

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v1, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;

    move-object/from16 v20, v1

    move-object/from16 v21, p1

    move-object/from16 v23, v30

    move-object/from16 v25, p3

    move/from16 v26, v31

    invoke-direct/range {v20 .. v26}, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$1;-><init>(Lcom/android/systemui/animation/TransitionAnimator$Controller;ZLandroid/view/ViewOverlay;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;

    move-object v1, v0

    move/from16 v20, v27

    move-object v0, v2

    move-object/from16 v32, v1

    move-object/from16 v1, p0

    move-object/from16 v33, v2

    move/from16 v21, v28

    move v2, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v4

    move v4, v5

    move-object/from16 v5, v16

    move-object/from16 v27, v12

    move/from16 v12, v21

    move-object/from16 v21, v14

    move-object/from16 v26, v19

    move/from16 v14, v20

    move-object/from16 v15, p1

    move/from16 v16, v31

    move-object/from16 v19, p3

    move-object/from16 v20, v30

    move-object/from16 v22, v29

    move/from16 v23, p4

    move/from16 v24, p5

    move-object/from16 v25, p2

    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/animation/TransitionAnimator$createAnimator$2;-><init>(Lcom/android/systemui/animation/TransitionAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/TransitionAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFLcom/android/systemui/animation/TransitionAnimator$Controller;ZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;ZZLcom/android/systemui/animation/TransitionAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__PlatformAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/TransitionAnimator$State;)Z
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/animation/TransitionAnimator;->transitionContainerLocation:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p2, Lcom/android/systemui/animation/TransitionAnimator$State;->top:I

    const/4 v1, 0x1

    aget v2, p0, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/TransitionAnimator$State;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v0, v4, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/TransitionAnimator$State;->left:I

    aget p0, p0, v3

    if-gt v0, p0, :cond_0

    iget p2, p2, Lcom/android/systemui/animation/TransitionAnimator$State;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public final startAnimation(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$State;IZZ)Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;
    .locals 7

    invoke-interface {p1}, Lcom/android/systemui/animation/TransitionAnimator$Controller;->isLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p3, 0x0

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/animation/TransitionAnimator;->createAnimator(Lcom/android/systemui/animation/TransitionAnimator$Controller;Lcom/android/systemui/animation/TransitionAnimator$State;Landroid/graphics/drawable/GradientDrawable;ZZ)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    new-instance p1, Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/TransitionAnimator$startAnimation$1;-><init>(Landroid/animation/ValueAnimator;)V

    return-object p1

    :cond_0
    sget-object p0, Lcom/android/systemui/animation/TransitionAnimator;->Companion:Lcom/android/systemui/animation/TransitionAnimator$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/Flags;->returnAnimationFrameworkLibrary()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "isLaunching cannot be false when the returnAnimationFrameworkLibrary flag is disabled"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
