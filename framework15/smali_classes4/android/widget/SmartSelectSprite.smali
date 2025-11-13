.class final Landroid/widget/SmartSelectSprite;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList;,
        Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;,
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
    }
.end annotation


# static fields
.field private static final greylist-max-o EXPAND_DURATION:I = 0xc8

.field static final greylist-max-o RECTANGLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mActiveAnimator:Landroid/animation/Animator;

.field private greylist-max-o mExistingDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

.field private final greylist-max-o mExpandInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-o mFillColor:I

.field private final greylist-max-o mInvalidator:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$i_KshA4950qAwOA-tjEY7NQ_fbc(Landroid/widget/SmartSelectSprite;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite;->lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExistingRectangleList(Landroid/widget/SmartSelectSprite;)Landroid/widget/SmartSelectSprite$RectangleList;
    .locals 0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvalidator(Landroid/widget/SmartSelectSprite;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    iput p2, p0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-void
.end method

.method private static greylist-max-o contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private blacklist createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 7

    nop

    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->-$$Nest$mgetTotalWidth(Landroid/widget/SmartSelectSprite$RectangleList;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v4, 0x1

    aput v0, v2, v4

    const-string/jumbo v0, "rightBoundary"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v1, [F

    aput p2, v2, v3

    const/4 v5, 0x0

    aput v5, v2, v4

    const-string v5, "leftBoundary"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-direct {p0, v5, p5}, Landroid/widget/SmartSelectSprite;->setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    return-object v5
.end method

.method private static greylist-max-o generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    aput v3, v0, v1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    aput v4, v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_3

    aput v5, v0, v1

    goto :goto_1

    :cond_3
    aput v3, v0, v1

    :goto_1
    add-int/lit8 v2, v1, 0x1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private synthetic blacklist lambda$startAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;)D
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    return-wide v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;)D
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    return-wide v0
.end method

.method private greylist-max-o removeExistingDrawables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private greylist-max-o setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/widget/SmartSelectSprite$1;

    invoke-direct {v0, p0, p2}, Landroid/widget/SmartSelectSprite$1;-><init>(Landroid/widget/SmartSelectSprite;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o cancelAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite;->removeExistingDrawables()V

    :cond_0
    return-void
.end method

.method public greylist-max-o draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o isAnimationActive()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    new-instance v4, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;

    invoke-direct {v4, v6}, Landroid/widget/SmartSelectSprite$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SmartSelectSprite;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/widget/SmartSelectSprite;->contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v0, v3

    move-object v11, v0

    goto :goto_1

    :cond_0
    int-to-float v11, v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v12

    add-float/2addr v11, v12

    float-to-int v1, v11

    goto :goto_0

    :cond_1
    move-object v11, v0

    :goto_1
    if-eqz v11, :cond_4

    int-to-float v0, v1

    iget v2, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v12, v0

    nop

    invoke-static {v11, v8}, Landroid/widget/SmartSelectSprite;->generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I

    move-result-object v13

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x0

    if-ge v0, v9, :cond_3

    nop

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-virtual {v2}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v3

    new-instance v5, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    aget v14, v13, v0

    invoke-virtual {v2}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getTextSelectionLayout()I

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    invoke-direct {v5, v3, v14, v15, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite$RoundedRectangleShape-IA;)V

    move-object v1, v5

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/widget/SmartSelectSprite$RectangleList;

    invoke-direct {v0, v10, v1}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;Landroid/widget/SmartSelectSprite$RectangleList-IA;)V

    move-object v14, v0

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v15, v0

    invoke-virtual {v15}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget v0, v6, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v14, v6, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    iput-object v15, v6, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v12

    int-to-float v3, v12

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v16, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SmartSelectSprite;->createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v6, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    iget-object v0, v6, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Center point is not inside any of the rectangles!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
