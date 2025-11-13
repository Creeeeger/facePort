.class final Landroid/widget/SmartSelectSprite$RoundedRectangleShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SmartSelectSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RoundedRectangleShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape$ExpansionDirection;
    }
.end annotation


# static fields
.field private static final greylist-max-o PROPERTY_ROUND_RATIO:Ljava/lang/String; = "roundRatio"


# instance fields
.field private final greylist-max-o mBoundingRectangle:Landroid/graphics/RectF;

.field private final greylist-max-o mBoundingWidth:F

.field private final greylist-max-o mClipPath:Landroid/graphics/Path;

.field private final greylist-max-o mDrawRect:Landroid/graphics/RectF;

.field private final greylist-max-o mExpansionDirection:I

.field private final greylist-max-o mInverted:Z

.field private greylist-max-o mLeftBoundary:F

.field private greylist-max-o mRightBoundary:F

.field private greylist-max-o mRoundRatio:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBoundingRectangle(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBoundingWidth(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;)F
    .locals 0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getBoundingWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetEndBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setEndBoundary(F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStartBoundary(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setStartBoundary(F)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/RectF;IZ)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    iput v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->invert(I)I

    move-result v2

    iput v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    goto :goto_1

    :cond_1
    iput p2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mExpansionDirection:I

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->setRoundRatio(F)V

    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite$RoundedRectangleShape-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZ)V

    return-void
.end method

.method private greylist-max-o getAdjustedCornerRadius()F
    .locals 2

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getBoundingWidth()F
    .locals 2

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method private greylist-max-o getCornerRadius()F
    .locals 2

    iget-object v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o invert(I)I
    .locals 1

    mul-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private greylist-max-o setEndBoundary(F)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    :goto_0
    return-void
.end method

.method private greylist-max-o setStartBoundary(F)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mInverted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingWidth:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    iget v1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getCornerRadius()F

    move-result v0

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getAdjustedCornerRadius()F

    move-result v1

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mLeftBoundary:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRightBoundary:F

    add-float/2addr v3, v5

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mDrawRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v2, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mBoundingRectangle:Landroid/graphics/RectF;

    invoke-virtual {p1, v2, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method greylist-max-o getRoundRatio()F
    .locals 1

    iget v0, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    return v0
.end method

.method greylist-max-o setRoundRatio(F)V
    .locals 0

    iput p1, p0, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->mRoundRatio:F

    return-void
.end method
