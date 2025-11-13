.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final COLOR_BACKGROUND_ATTR:[I

.field public static final IMPL:Landroidx/cardview/widget/CardViewApi21Impl;


# instance fields
.field public final mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

.field public final mCompatPadding:Z

.field public final mContentPadding:Landroid/graphics/Rect;

.field public final mPreventCornerOverlap:Z

.field public final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010031

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0400dc

    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v1, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v1, p0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->mCardViewDelegate:Landroidx/cardview/widget/CardView$1;

    sget-object v2, Landroidx/cardview/R$styleable;->CardView:[I

    const v3, 0x7f15021b

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v4, Landroidx/cardview/widget/CardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    new-array p3, v2, [F

    invoke-static {v4, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget p2, p3, p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600d4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600d3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_1
    const/4 p3, 0x0

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    const/4 v5, 0x7

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    const/16 v8, 0x8

    invoke-virtual {p1, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/16 v9, 0xa

    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    const/16 v9, 0xc

    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    const/16 v9, 0xb

    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    const/16 v9, 0x9

    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v4, p3

    if-lez v0, :cond_2

    move p3, v4

    :cond_2
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroidx/cardview/widget/RoundRectDrawable;

    invoke-direct {p1, p2, v2}, Landroidx/cardview/widget/RoundRectDrawable;-><init>(Landroid/content/res/ColorStateList;F)V

    iput-object p1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0, v4}, Landroid/view/View;->setElevation(F)V

    iget-object p1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    iget p2, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    cmpl-float p2, p3, p2

    if-nez p2, :cond_3

    iget-boolean p2, p1, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    if-ne p2, v5, :cond_3

    iget-boolean p2, p1, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    if-ne p2, v6, :cond_3

    goto :goto_2

    :cond_3
    iput p3, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    iput-boolean v5, p1, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    iput-boolean v6, p1, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_2
    iget-boolean p1, p0, Landroidx/cardview/widget/CardView;->mCompatPadding:Z

    if-nez p1, :cond_4

    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    goto :goto_3

    :cond_4
    iget-object p1, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    check-cast p1, Landroidx/cardview/widget/RoundRectDrawable;

    iget p2, p1, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    iget p1, p1, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    iget-boolean p3, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    invoke-static {p2, p1, p3}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result p3

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p3, v2

    iget-boolean p0, p0, Landroidx/cardview/widget/CardView;->mPreventCornerOverlap:Z

    invoke-static {p2, p1, p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v1, p3, p0, p3, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    :goto_3
    return-void
.end method

.method public static synthetic access$001(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method
