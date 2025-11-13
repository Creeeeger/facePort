.class public Landroid/view/CutoutSpecification$Parser;
.super Ljava/lang/Object;
.source "CutoutSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/CutoutSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private blacklist mBindBottomCutout:Z

.field private blacklist mBindLeftCutout:Z

.field private blacklist mBindRightCutout:Z

.field private blacklist mBottomBound:Landroid/graphics/Rect;

.field private blacklist mInDp:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mIsCloserToStartSide:Z

.field private final blacklist mIsShortEdgeOnTop:Z

.field private blacklist mIsTouchShortEdgeEnd:Z

.field private blacklist mIsTouchShortEdgeStart:Z

.field private blacklist mLeftBound:Landroid/graphics/Rect;

.field private final blacklist mMatrix:Landroid/graphics/Matrix;

.field private blacklist mPath:Landroid/graphics/Path;

.field private final blacklist mPhysicalDisplayHeight:I

.field private final blacklist mPhysicalDisplayWidth:I

.field private final blacklist mPhysicalPixelDisplaySizeRatio:F

.field private blacklist mPositionFromBottom:Z

.field private blacklist mPositionFromCenterVertical:Z

.field private blacklist mPositionFromLeft:Z

.field private blacklist mPositionFromRight:Z

.field private blacklist mRightBound:Landroid/graphics/Rect;

.field private blacklist mSafeInsetBottom:I

.field private blacklist mSafeInsetLeft:I

.field private blacklist mSafeInsetRight:I

.field private blacklist mSafeInsetTop:I

.field private final blacklist mStableDensity:F

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRectF:Landroid/graphics/RectF;

.field private blacklist mTopBound:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottomBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInsets(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPath(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhysicalPixelDisplaySizeRatio(Landroid/view/CutoutSpecification$Parser;)F
    .locals 0

    iget p0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopBound(Landroid/view/CutoutSpecification$Parser;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor blacklist <init>(FII)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    return-void
.end method

.method constructor blacklist <init>(FIIF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput p1, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iput p3, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    iput p4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalPixelDisplaySizeRatio:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    return-void
.end method

.method private blacklist computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private blacklist computeSafeInsets(ILandroid/graphics/Rect;)I
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    return v0

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_1

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_3

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getSafeInset(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    return v0

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    return v0

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v1, v0, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    invoke-static {v0, p2, p1}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    invoke-static {v1, v0, v2}, Landroid/view/CutoutSpecification;->-$$Nest$smdecideWhichEdge(ZZZ)I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->getSafeInset(I)I

    move-result v1

    invoke-direct {p0, v0, p3}, Landroid/view/CutoutSpecification$Parser;->computeSafeInsets(ILandroid/graphics/Rect;)I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-direct {p0, v0, v2}, Landroid/view/CutoutSpecification$Parser;->setSafeInset(II)V

    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v3
.end method

.method private blacklist parseSpecWithoutDp(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x40

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_0
    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string v4, "@left"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    if-nez v5, :cond_1

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_1

    :cond_2
    const-string v4, "@right"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-nez v5, :cond_3

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto/16 :goto_1

    :cond_4
    const-string v4, "@bottom"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    goto :goto_1

    :cond_5
    const-string v4, "@center_vertical"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    goto :goto_1

    :cond_6
    const-string v4, "@cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v1}, Landroid/view/CutoutSpecification$Parser;->resetStatus(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_7
    const-string v4, "@bind_left_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_8
    const-string v4, "@bind_right_cutout"

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    iput-boolean v7, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v6, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move v3, v2

    goto/16 :goto_0

    :cond_a
    if-nez v1, :cond_b

    invoke-direct {p0, v0, p1}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, p1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Landroid/view/CutoutSpecification$Parser;->parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    return-void
.end method

.method private blacklist parseSvgPathSpec(Landroid/graphics/Region;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->length(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/view/CutoutSpecification;->-$$Nest$sfgetMINIMAL_ACCEPTABLE_PATH_LENGTH()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, "CutoutSpecification"

    const-string v1, "According to SVG definition, it shouldn\'t happen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/CutoutSpecification$Parser;->translateMatrix()V

    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/CutoutSpecification$Parser;->computeBoundsRectAndAddToRegion(Landroid/graphics/Path;Landroid/graphics/Region;Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    if-lt v1, v4, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    goto :goto_6

    :cond_5
    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeStart:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    if-lt v1, v4, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Landroid/view/CutoutSpecification$Parser;->mIsTouchShortEdgeEnd:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mIsCloserToStartSide:Z

    :goto_6
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->setEdgeCutout(Landroid/graphics/Path;)V

    return-void
.end method

.method private blacklist resetStatus(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    iput-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    return-void
.end method

.method private blacklist setEdgeCutout(Landroid/graphics/Path;)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mRightBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    xor-int/2addr v0, v2

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mLeftBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, v2}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mBottomBound:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindBottomCutout:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindLeftCutout:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mBindRightCutout:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mIsShortEdgeOnTop:Z

    iget-object v1, p0, Landroid/view/CutoutSpecification$Parser;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0, v1}, Landroid/view/CutoutSpecification$Parser;->onSetEdgeCutout(ZZLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mTopBound:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :cond_3
    iput-object p1, p0, Landroid/view/CutoutSpecification$Parser;->mPath:Landroid/graphics/Path;

    :goto_1
    return-void

    :cond_4
    return-void
.end method

.method private blacklist setSafeInset(II)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x50

    if-ne p1, v0, :cond_3

    iput p2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist translateMatrix()V
    .locals 5

    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromRight:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromLeft:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    :goto_0
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromBottom:Z

    if-eqz v2, :cond_2

    iget v1, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v1, v1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mPositionFromCenterVertical:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mPhysicalDisplayHeight:I

    int-to-float v2, v2

    div-float v1, v2, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-boolean v2, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mStableDensity:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_4
    iget-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "@dp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iput-boolean v4, p0, Landroid/view/CutoutSpecification$Parser;->mInDp:Z

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    invoke-direct {p0, v0}, Landroid/view/CutoutSpecification$Parser;->parseSpecWithoutDp(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetLeft:I

    iget v3, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetTop:I

    iget v4, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetRight:I

    iget v5, p0, Landroid/view/CutoutSpecification$Parser;->mSafeInsetBottom:I

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, p0, Landroid/view/CutoutSpecification$Parser;->mInsets:Landroid/graphics/Insets;

    new-instance v2, Landroid/view/CutoutSpecification;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/view/CutoutSpecification;-><init>(Landroid/view/CutoutSpecification$Parser;Landroid/view/CutoutSpecification-IA;)V

    return-object v2
.end method
