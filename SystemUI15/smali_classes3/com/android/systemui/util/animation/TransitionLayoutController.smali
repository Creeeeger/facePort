.class public Lcom/android/systemui/util/animation/TransitionLayoutController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private animator:Landroid/animation/ValueAnimator;

.field private currentHeight:I

.field private currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private currentWidth:I

.field private isGutsAnimation:Z

.field private sizeChangedListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field private state:Lcom/android/systemui/util/animation/TransitionViewState;

.field private transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    new-instance v0, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/animation/TransitionLayoutController$1$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayoutController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object p0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$updateStateFromAnimation(Lcom/android/systemui/util/animation/TransitionLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayoutController;->updateStateFromAnimation()V

    return-void
.end method

.method private final applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/TransitionLayout;->setState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentWidth:I

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic getGoneState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getGoneState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getInterpolatedState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getInterpolatedState"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic setState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;ZZJJZILjava/lang/Object;)V
    .locals 12

    if-nez p10, :cond_2

    and-int/lit8 v0, p9, 0x8

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-wide v9, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p6

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJZ)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: setState"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updateStateFromAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v0}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    return-void
.end method

.method public final getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 4

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearStart()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearEnd()F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1, v2, p3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    invoke-static {p0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    invoke-virtual {p1, p4}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    invoke-static {p4, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    invoke-static {p4, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p4

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v3

    iput v0, p4, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, v0

    iput p1, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p4, v2

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p4, v0

    iput p4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object p4

    iget p4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, v2

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p4, v0

    iput p4, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/android/systemui/util/animation/DisappearParameters;->getFadeStartPosition()F

    move-result p1

    invoke-static {p1, v2, v2, v1, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    invoke-static {p0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->setAlpha(F)V

    return-object p3
.end method

.method public final getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-nez p4, :cond_0

    new-instance v2, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v2}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    if-ge v6, v4, :cond_d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v9, :cond_2

    new-instance v9, Lcom/android/systemui/util/animation/WidgetState;

    const/16 v20, 0x1ff

    const/16 v21, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v21}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v10, :cond_3

    :goto_2
    move-object/from16 v19, v3

    goto/16 :goto_9

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v12

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v13

    if-eq v12, v13, :cond_c

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v12

    const v14, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v15

    iget-boolean v13, v0, Lcom/android/systemui/util/animation/TransitionLayoutController;->isGutsAnimation:Z

    if-eqz v13, :cond_6

    const v13, 0x3e926e98    # 0.286f

    invoke-static {v13, v5, v7, v5, v1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v7

    cmpg-float v13, v1, v13

    if-gez v13, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v13

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v14

    move-object/from16 v19, v3

    move/from16 v18, v5

    move/from16 v0, v16

    goto/16 :goto_7

    :cond_6
    invoke-static {v14, v5, v7, v5, v1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v7

    cmpg-float v13, v1, v14

    if-gez v13, :cond_7

    const/16 v16, 0x1

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v13

    mul-float/2addr v14, v13

    invoke-static {v14, v13, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v14

    int-to-float v5, v12

    const/high16 v17, 0x40000000    # 2.0f

    div-float v5, v5, v17

    sub-float/2addr v14, v5

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v5

    invoke-static {v14, v5, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v14

    move-object/from16 v19, v3

    int-to-float v3, v15

    div-float v3, v3, v17

    sub-float/2addr v14, v3

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v3

    invoke-static {v14, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    move/from16 v0, v16

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v22, v13

    move v13, v5

    move/from16 v5, v22

    goto/16 :goto_7

    :cond_8
    move-object/from16 v19, v3

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v12

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v15

    iget-boolean v3, v0, Lcom/android/systemui/util/animation/TransitionLayoutController;->isGutsAnimation:Z

    if-eqz v3, :cond_a

    const v3, 0x3eb5c28f    # 0.355f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v3, v7, v5, v1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v13

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    const/16 v16, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_5
    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v3

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v14

    move/from16 v18, v7

    move v7, v13

    move/from16 v0, v16

    move v13, v3

    goto :goto_7

    :cond_a
    const/high16 v5, 0x3f800000    # 1.0f

    const v3, 0x3e4ccccc    # 0.19999999f

    invoke-static {v7, v3, v7, v5, v1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v5

    cmpl-float v3, v1, v3

    if-lez v3, :cond_b

    const/16 v16, 0x1

    goto :goto_6

    :cond_b
    const/16 v16, 0x0

    :goto_6
    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v3

    mul-float/2addr v14, v3

    invoke-static {v3, v14, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v13

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v14

    int-to-float v7, v12

    const/high16 v17, 0x40000000    # 2.0f

    div-float v7, v7, v17

    sub-float/2addr v14, v7

    invoke-static {v13, v14, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v7

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v14

    int-to-float v0, v15

    div-float v0, v0, v17

    sub-float/2addr v14, v0

    invoke-static {v7, v14, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    move v7, v5

    move/from16 v0, v16

    const/16 v18, 0x0

    move v5, v3

    :goto_7
    invoke-virtual {v9, v0}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    move/from16 v0, v18

    goto :goto_8

    :cond_c
    move-object/from16 v19, v3

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v15

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v0

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v0

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v13

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v0

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    move v0, v1

    move v7, v0

    :goto_8
    invoke-virtual {v9, v13}, Lcom/android/systemui/util/animation/WidgetState;->setX(F)V

    invoke-virtual {v9, v14}, Lcom/android/systemui/util/animation/WidgetState;->setY(F)V

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v3

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v13

    invoke-static {v3, v13, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3, v7, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v9, v3}, Lcom/android/systemui/util/animation/WidgetState;->setWidth(I)V

    invoke-virtual {v10}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3, v7, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v9, v0}, Lcom/android/systemui/util/animation/WidgetState;->setHeight(I)V

    invoke-virtual {v9, v5}, Lcom/android/systemui/util/animation/WidgetState;->setScale(F)V

    invoke-virtual {v9, v12}, Lcom/android/systemui/util/animation/WidgetState;->setMeasureWidth(I)V

    invoke-virtual {v9, v15}, Lcom/android/systemui/util/animation/WidgetState;->setMeasureHeight(I)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v19

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-nez v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureWidth(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureHeight(I)V

    goto :goto_a

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureWidth(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getMeasureHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setMeasureHeight(I)V

    :goto_a
    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getAlpha()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getAlpha()F

    move-result v3

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->setAlpha(F)V

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public final getSizeChangedListener()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayout;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :goto_0
    return-void
.end method

.method public final setSizeChangedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->sizeChangedListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJZ)V
    .locals 2

    iput-boolean p8, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->isGutsAnimation:Z

    const/4 p8, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p3}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p3

    if-eqz p3, :cond_0

    move p3, p8

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0, p8, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy$default(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-static {p1, v0, p8, v0}, Lcom/android/systemui/util/animation/TransitionViewState;->copy$default(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animationStartState:Lcom/android/systemui/util/animation/TransitionViewState;

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p6, p7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    iget-boolean p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->isGutsAnimation:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->state:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->applyStateToLayout(Lcom/android/systemui/util/animation/TransitionViewState;)V

    iget-object p2, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayoutController;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    :cond_5
    :goto_3
    return-void
.end method
