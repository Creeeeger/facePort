.class public Landroidx/appcompat/util/SeslRoundedCorner;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBottomLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

.field public mBottomLeftRoundColor:I

.field public final mBottomRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

.field public mBottomRightRoundColor:I

.field public mInsets:Landroidx/core/graphics/Insets;

.field public final mRoundRadius:I

.field public final mRoundedCornerBounds:Landroid/graphics/Rect;

.field public mRoundedCornerMode:I

.field public final mTopLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

.field public mTopLeftRoundColor:I

.field public final mTopRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

.field public mTopRightRoundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0712da

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v4, 0x7f040583

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v3, Landroid/util/TypedValue;->resourceId:I

    const/16 v2, 0x1f

    const/16 v4, 0x1c

    if-lez p1, :cond_0

    iget v5, v3, Landroid/util/TypedValue;->type:I

    if-lt v5, v4, :cond_0

    if-gt v5, v2, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_0
    iget p1, v3, Landroid/util/TypedValue;->data:I

    if-lez p1, :cond_1

    iget v3, v3, Landroid/util/TypedValue;->type:I

    if-lt v3, v4, :cond_1

    if-gt v3, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    const p1, 0x7f0607bb

    goto :goto_0

    :cond_2
    const p1, 0x7f0607bc

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_1
    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    const/4 v2, 0x0

    invoke-direct {p1, v0, p2, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v1, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-direct {p1, v0, p2, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v1, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    const/high16 v2, 0x43870000    # 270.0f

    invoke-direct {p1, v0, p2, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v1, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    new-instance p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-direct {p1, v0, p2, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;-><init>(ILandroid/graphics/Paint;F)V

    iput-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v1, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {p2, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawRoundedCornerInternal$1(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v4, v2, Landroidx/core/graphics/Insets;->left:I

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_1

    iget v5, v2, Landroidx/core/graphics/Insets;->right:I

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_2

    iget v6, v2, Landroidx/core/graphics/Insets;->top:I

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    add-int/2addr v5, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    iget v3, v2, Landroidx/core/graphics/Insets;->bottom:I

    :cond_3
    sub-int/2addr v0, v3

    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundRadius:I

    if-eqz v2, :cond_4

    add-int v2, v1, v3

    add-int v6, v5, v3

    iget-object v7, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    invoke-virtual {v7, v1, v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    sub-int v2, v4, v3

    add-int v6, v5, v3

    iget-object v7, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    invoke-virtual {v7, v2, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    sub-int v2, v0, v3

    add-int v6, v1, v3

    iget-object v7, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    invoke-virtual {v7, v1, v2, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v7, p1}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    sub-int v2, v4, v3

    sub-int v3, v0, v3

    iget-object v6, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    invoke-virtual {v6, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, p1}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget v3, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRoundColor:I

    if-ne v2, v3, :cond_b

    iget v3, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    if-ne v2, v3, :cond_b

    iget v3, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    if-ne v2, v3, :cond_b

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    if-eqz v2, :cond_8

    iget v2, v2, Landroidx/core/graphics/Insets;->top:I

    if-lez v2, :cond_8

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget v7, v6, Landroidx/core/graphics/Insets;->left:I

    sub-int v7, v1, v7

    iget v8, v6, Landroidx/core/graphics/Insets;->top:I

    sub-int v8, v5, v8

    iget v6, v6, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v6, v4

    invoke-direct {v2, v7, v8, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    iget-object v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    if-eqz v2, :cond_9

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v2, :cond_9

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget v7, v6, Landroidx/core/graphics/Insets;->left:I

    sub-int v7, v1, v7

    iget v8, v6, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v8, v4

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v6, v0

    invoke-direct {v2, v7, v0, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    iget-object v2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    if-eqz v2, :cond_a

    iget v2, v2, Landroidx/core/graphics/Insets;->left:I

    if-lez v2, :cond_a

    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget v7, v6, Landroidx/core/graphics/Insets;->left:I

    sub-int v7, v1, v7

    iget v8, v6, Landroidx/core/graphics/Insets;->top:I

    sub-int v8, v5, v8

    iget v6, v6, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v6, v0

    invoke-direct {v2, v7, v8, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    iget-object v1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    if-eqz v1, :cond_b

    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    if-lez v1, :cond_b

    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mInsets:Landroidx/core/graphics/Insets;

    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v5, v2

    iget v2, p0, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v2, v4

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr v0, p0

    invoke-direct {v1, v4, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_b
    return-void
.end method

.method public final setRoundedCornerColor(II)V
    .locals 2

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iput p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    iget-object v1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v0, v1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    iput p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iget-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mTopRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v0, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :cond_1
    iput p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iget-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomLeftRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v0, p1, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    iput p2, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iget-object p0, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mBottomRightRound:Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;

    iput-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "There is no rounded corner on = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRoundedCorners(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner;->mRoundedCornerMode:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use wrong rounded corners to the param, corners = "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
