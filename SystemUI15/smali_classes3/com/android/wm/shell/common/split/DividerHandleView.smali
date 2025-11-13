.class public Lcom/android/wm/shell/common/split/DividerHandleView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$2;

.field public static final WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;


# instance fields
.field public mAnimator:Landroid/animation/AnimatorSet;

.field public final mCircleDiameter:I

.field public final mCircleMargin:I

.field public mCurrentHeight:I

.field public mCurrentWidth:I

.field public final mHandleType:I

.field public mHeight:I

.field public final mHorizontalHandlerTopMargin:I

.field public mHovering:Z

.field public mHoveringHeight:I

.field public mHoveringWidth:I

.field public final mIsHorizontalDivision:Z

.field public mIsLeftRightSplit:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerHandleView;->WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    new-instance v0, Lcom/android/wm/shell/common/split/DividerHandleView$2;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/split/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/common/split/DividerHandleView;->HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/wm/shell/R$styleable;->DividerHandleView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    const p1, 0x7f0701b2

    const p2, 0x7f0701b3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071458

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071454

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060950

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071453

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    iget p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    iget p2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070aa5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_4
    iput v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHorizontalHandlerTopMargin:I

    :cond_5
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHorizontalHandlerTopMargin:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHandleType:I

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v4, :cond_4

    const/4 v11, 0x2

    if-ne v3, v11, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v11

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v11

    int-to-float v9, v4

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_1

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    div-int/2addr v0, v11

    int-to-float v0, v0

    sub-float v8, v3, v0

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v0, v0

    sub-float v6, v8, v0

    add-float v9, v2, v0

    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    div-int/2addr v0, v11

    int-to-float v0, v0

    add-float v6, v3, v0

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v0, v0

    add-float v8, v6, v0

    add-float v9, v2, v0

    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_1
    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    div-int/2addr v2, v11

    int-to-float v2, v2

    sub-float v7, v9, v2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v2, v2

    sub-float v5, v7, v2

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    div-int/2addr v2, v11

    int-to-float v2, v2

    add-float v5, v9, v2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v2, v2

    add-float v7, v5, v2

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    :goto_0
    int-to-float v3, v4

    add-float v11, v2, v3

    iget-boolean v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v4, v4

    sub-float v8, v0, v4

    sub-float v6, v8, v3

    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v5, v2

    move v6, v1

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v0, v0

    add-float v6, v1, v0

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v0, v0

    add-float v8, v6, v0

    iget-object v10, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v4, v4

    sub-float v7, v2, v4

    sub-float v5, v7, v3

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v0

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move v5, v2

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleMargin:I

    int-to-float v2, v2

    add-float v5, v11, v2

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCircleDiameter:I

    int-to-float v2, v2

    add-float v7, v5, v2

    iget-object v8, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setHovering(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHovering:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHoveringWidth:I

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHoveringHeight:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    :goto_1
    sget-object v2, Lcom/android/wm/shell/common/split/DividerHandleView;->WIDTH_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$1;

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    filled-new-array {v3, v0}, [I

    move-result-object v0

    invoke-static {p0, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/common/split/DividerHandleView;->HEIGHT_PROPERTY:Lcom/android/wm/shell/common/split/DividerHandleView$2;

    iget v3, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    const-wide/16 v1, 0x96

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0xc8

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_5

    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/wm/shell/common/split/DividerHandleView$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/split/DividerHandleView$3;-><init>(Lcom/android/wm/shell/common/split/DividerHandleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHovering:Z

    return-void
.end method
