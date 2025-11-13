.class public Landroidx/leanback/widget/PagingIndicator;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final DOT_ALPHA:Landroidx/leanback/widget/PagingIndicator$1;

.field public static final DOT_DIAMETER:Landroidx/leanback/widget/PagingIndicator$2;

.field public static final DOT_TRANSLATION_X:Landroidx/leanback/widget/PagingIndicator$3;


# instance fields
.field public mArrow:Landroid/graphics/Bitmap;

.field public final mArrowDiameter:I

.field public final mArrowGap:I

.field public final mArrowPaint:Landroid/graphics/Paint;

.field public final mArrowRadius:I

.field public final mArrowToBgRatio:F

.field public final mDotFgSelectColor:I

.field public final mDotGap:I

.field public final mDotRadius:I

.field public mIsLtr:Z

.field public final mShadowRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroidx/leanback/widget/PagingIndicator$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "alpha"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroidx/leanback/widget/PagingIndicator$1;

    new-instance v0, Landroidx/leanback/widget/PagingIndicator$2;

    const-string v2, "diameter"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroidx/leanback/widget/PagingIndicator$2;

    new-instance v0, Landroidx/leanback/widget/PagingIndicator$3;

    const-string/jumbo v2, "translation_x"

    invoke-direct {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroidx/leanback/widget/PagingIndicator$3;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/PagingIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v7, p0

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget-object v2, Landroidx/leanback/R$styleable;->PagingIndicator:[I

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    invoke-virtual {v1, v3, v2, v5, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object v4, v13

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {v13, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v7, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/2addr v0, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v13, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    mul-int/2addr v1, v9

    iput v1, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v7, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v13, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0601c7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v13, v12, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v7, Landroidx/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    iget-object v2, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    invoke-virtual {v13, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v13, v8, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-object v4, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v4, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v8

    goto :goto_0

    :cond_2
    move v2, v12

    :goto_0
    iput-boolean v2, v7, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    const v2, 0x7f0601c8

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v4, 0x7f0706d2

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v7, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    const v6, 0x7f0706d1

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v4, v4

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6, v6, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v7, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v4, v7, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, v7, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v12, v12, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, v7, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v7, Landroidx/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v3, [Landroid/animation/Animator;

    sget-object v5, Landroidx/leanback/widget/PagingIndicator;->DOT_ALPHA:Landroidx/leanback/widget/PagingIndicator$1;

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    const/4 v11, 0x0

    invoke-static {v11, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v13, 0xa7

    invoke-virtual {v6, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v15, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v6, v4, v12

    int-to-float v0, v0

    sget-object v6, Landroidx/leanback/widget/PagingIndicator;->DOT_DIAMETER:Landroidx/leanback/widget/PagingIndicator$2;

    new-array v13, v9, [F

    aput v0, v13, v12

    aput v1, v13, v8

    invoke-static {v11, v6, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    const-wide/16 v11, 0x1a1

    invoke-virtual {v13, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v13, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v13, v4, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v13

    aput-object v13, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v3, [Landroid/animation/Animator;

    new-array v13, v9, [F

    fill-array-data v13, :array_1

    const/4 v14, 0x0

    invoke-static {v14, v5, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v11, 0xa7

    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v11, 0x0

    aput-object v5, v3, v11

    new-array v5, v9, [F

    aput v1, v5, v11

    aput v0, v5, v8

    invoke-static {v14, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x1a1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    aput-object v0, v3, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/leanback/widget/PagingIndicator;->createDotTranslationXAnimator()Landroid/animation/Animator;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v2, v0, v11

    aput-object v4, v0, v8

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final calculateDotPositions()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    iget v3, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    const/4 v6, -0x3

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    new-array v5, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [I

    iget-boolean p0, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz p0, :cond_0

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    add-int/2addr v0, v2

    sub-int p0, v0, v3

    add-int/2addr p0, v4

    aput p0, v5, v1

    aput v0, v7, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    aput v4, v8, v1

    goto :goto_0

    :cond_0
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    sub-int/2addr v6, v2

    add-int p0, v6, v3

    sub-int/2addr p0, v4

    aput p0, v5, v1

    aput v6, v7, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aput v3, v8, v1

    :goto_0
    const/4 p0, 0x0

    throw p0
.end method

.method public final createDotTranslationXAnimator()Landroid/animation/Animator;
    .locals 3

    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DOT_TRANSLATION_X:Landroidx/leanback/widget/PagingIndicator$3;

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    neg-int v1, v1

    iget p0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x0

    const/4 v2, 0x1

    aput p0, v1, v2

    const/4 p0, 0x0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1a1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Landroidx/leanback/widget/PagingIndicator;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public final loadArrow()Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080bd6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-boolean p0, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz p0, :cond_0

    return-object v2

    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v7, p0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mShadowRadius:I

    add-int/2addr v1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget v0, p0, Landroidx/leanback/widget/PagingIndicator;->mDotRadius:I

    mul-int/lit8 v0, v0, 0x2

    iget v4, p0, Landroidx/leanback/widget/PagingIndicator;->mArrowGap:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    const/4 v0, -0x3

    iget v5, p0, Landroidx/leanback/widget/PagingIndicator;->mDotGap:I

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_1
    invoke-virtual {p0, p2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Landroidx/leanback/widget/PagingIndicator;->mIsLtr:Z

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->loadArrow()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroidx/leanback/widget/PagingIndicator;->calculateDotPositions()V

    const/4 p0, 0x0

    throw p0
.end method
