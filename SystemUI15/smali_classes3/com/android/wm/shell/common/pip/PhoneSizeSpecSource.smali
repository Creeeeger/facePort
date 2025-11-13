.class public final Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/pip/SizeSpecSource;


# instance fields
.field public final DEFAULT_OPTIMIZED_ASPECT_RATIO:F

.field public final context:Landroid/content/Context;

.field public mDefaultMinSize:I

.field public mDefaultMinWidth:I

.field public mOptimizedAspectRatio:F

.field public mOverridableMinSize:I

.field public mOverrideMinSize:Landroid/util/Size;

.field public mSquareDisplayThresholdForSystemPreferredSize:F

.field public mSystemPreferredDefaultSizePercent:F

.field public mSystemPreferredDefaultSizePercentForSquareDisplay:F

.field public mSystemPreferredMinimumSizePercent:F

.field public mSystemPreferredMinimumSizePercentForSquareDisplay:F

.field public final pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    const/high16 p1, 0x3f100000    # 0.5625f

    iput p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->DEFAULT_OPTIMIZED_ASPECT_RATIO:F

    const p1, 0x3f19999a    # 0.6f

    iput p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercent:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercent:F

    const p2, 0x3f733333    # 0.95f

    iput p2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSquareDisplayThresholdForSystemPreferredSize:F

    iput p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercentForSquareDisplay:F

    const p1, 0x3ecccccd    # 0.4f

    iput p1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercentForSquareDisplay:F

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->reloadResources()V

    return-void
.end method


# virtual methods
.method public final adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;
    .locals 2

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getOverrideMinSize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public final getDefaultSize(F)Landroid/util/Size;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMinSize(F)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMIsSquareDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercentForSquareDisplay:F

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercent:F

    :goto_0
    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final getMIsSquareDisplay()Z
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v1

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSquareDisplayThresholdForSystemPreferredSize:F

    cmpl-float p0, v1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getMaxSize(F)Landroid/util/Size;
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOptimizedAspectRatio:F

    cmpl-float v1, p1, p0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    int-to-float v1, v1

    div-float v2, v1, p0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v2, v0

    mul-float v3, p0, v2

    sub-float p0, p1, p0

    mul-float/2addr p0, v2

    add-float/2addr v1, p1

    div-float/2addr p0, v1

    add-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    int-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_1
    int-to-float p0, v0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    move v5, v0

    move v0, p0

    move p0, v5

    :goto_0
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public final getMinSize(F)Landroid/util/Size;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMIsSquareDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercentForSquareDisplay:F

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercent:F

    :goto_0
    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMIsSquareDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercentForSquareDisplay:F

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercent:F

    :goto_1
    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinSize:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :cond_3
    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinSize:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float v0, p0

    div-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    move v3, p1

    move p1, p0

    move p0, v3

    :goto_2
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final getOverrideMinSize()Landroid/util/Size;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverridableMinSize:I

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverridableMinSize:I

    if-ge v1, v2, :cond_2

    :cond_1
    new-instance v0, Landroid/util/Size;

    iget p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverridableMinSize:I

    invoke-direct {v0, p0, p0}, Landroid/util/Size;-><init>(II)V

    :cond_2
    return-object v0
.end method

.method public final getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->adjustOverrideMinSizeToAspectRatio(F)Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getMaxSize(F)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverrideMinSize:Landroid/util/Size;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinSize:I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/android/wm/shell/common/pip/SizeSpecSource;->getOverrideMinEdgeSize()I

    move-result v2

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_2

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_2

    int-to-float p2, v2

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    move v1, v2

    goto :goto_1

    :cond_2
    if-ge p2, v2, :cond_3

    cmpl-float v4, p1, v3

    if-lez v4, :cond_3

    int-to-float p2, v2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    move p2, v2

    :cond_3
    :goto_1
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_4

    iget v2, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinWidth:I

    if-ge v1, v2, :cond_4

    int-to-float p2, v2

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    move v1, v2

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->pipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getInsetBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    sub-int/2addr v2, p1

    if-lez v2, :cond_5

    if-le p2, v2, :cond_5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_5
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public final reloadResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinSize:I

    const v1, 0x7f070c74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOverridableMinSize:I

    const v1, 0x7f07022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercent:F

    const v1, 0x7f07022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercent:F

    const v1, 0x7f070229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSquareDisplayThresholdForSystemPreferredSize:F

    const v1, 0x7f07022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredDefaultSizePercentForSquareDisplay:F

    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mSystemPreferredMinimumSizePercentForSquareDisplay:F

    const v1, 0x7f070228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->DEFAULT_OPTIMIZED_ASPECT_RATIO:F

    :cond_0
    iput v1, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mOptimizedAspectRatio:F

    const v1, 0x7f070cef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->mDefaultMinWidth:I

    return-void
.end method
