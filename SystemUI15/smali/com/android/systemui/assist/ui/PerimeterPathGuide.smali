.class public final Lcom/android/systemui/assist/ui/PerimeterPathGuide;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBottomCornerRadiusPx:I

.field public final mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

.field public final mDeviceHeightPx:I

.field public final mDeviceWidthPx:I

.field public final mEdgeInset:I

.field public final mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

.field public mRotation:I

.field public final mScratchPathMeasure:Landroid/graphics/PathMeasure;

.field public final mTopCornerRadiusPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    iput v2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    iput-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iput p4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    iput p5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    invoke-static {p1, v2}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    iput p3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    iput-object p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    move p1, v2

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    new-instance p3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-direct {p3, p0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;-><init>(Lcom/android/systemui/assist/ui/PerimeterPathGuide;I)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    return-void
.end method


# virtual methods
.method public final computeRegions()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, -0x10e

    goto :goto_0

    :cond_1
    const/16 v1, -0xb4

    goto :goto_0

    :cond_2
    const/16 v1, -0x5a

    :goto_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    iget v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    iget v9, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    div-int/lit8 v10, v9, 0x2

    int-to-float v10, v10

    invoke-virtual {v6, v1, v8, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq v1, v4, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v17, v9

    move v9, v7

    move/from16 v7, v17

    goto :goto_2

    :cond_4
    :goto_1
    sub-int v1, v9, v7

    div-int/2addr v1, v3

    int-to-float v1, v1

    sub-int v2, v7, v9

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_2
    sget-object v1, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v3

    sget-object v8, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-virtual {v0, v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v8

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    aget-object v11, v12, v11

    iget v13, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v14, v13

    iget-object v15, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    invoke-virtual {v15, v1, v14}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v14

    iput-object v14, v11, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    sget-object v11, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v14, v12, v14

    int-to-float v4, v13

    invoke-virtual {v15, v2, v4}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v4

    iput-object v4, v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    sget-object v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v14, v12, v14

    int-to-float v5, v13

    invoke-virtual {v15, v8, v5}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    sget-object v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget-object v14, v12, v14

    move-object/from16 v16, v8

    int-to-float v8, v13

    invoke-virtual {v15, v3, v8}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v8

    iput-object v8, v14, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v8, v12, v8

    iget-object v8, v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v8, v12, v8

    iget-object v8, v8, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v12, v4

    iget-object v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v12, v4

    iget-object v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v5

    int-to-float v5, v5

    sub-int v6, v7, v13

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v5

    sub-int v5, v9, v5

    int-to-float v5, v5

    sub-int v6, v7, v13

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v5, v12, v5

    iput-object v4, v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v5, v16

    invoke-virtual {v0, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v6

    sub-int v6, v9, v6

    int-to-float v6, v6

    int-to-float v8, v13

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v6

    int-to-float v6, v6

    int-to-float v8, v13

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v12, v6

    iput-object v4, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    sub-int v6, v9, v13

    int-to-float v6, v6

    invoke-virtual {v0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v2

    sub-int v2, v7, v2

    int-to-float v2, v2

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int/2addr v9, v13

    int-to-float v2, v9

    invoke-virtual {v0, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v2, v12, v2

    iput-object v4, v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float v4, v13

    invoke-virtual {v0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v3, v13

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v0

    sub-int/2addr v7, v0

    int-to-float v0, v7

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    sget-object v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, v12, v0

    iput-object v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    const/4 v2, 0x0

    :goto_3
    array-length v4, v12

    if-ge v2, v4, :cond_5

    aget-object v4, v12, v2

    iget-object v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    aget-object v4, v12, v2

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    iput v6, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    aget-object v4, v12, v2

    iget v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_4
    array-length v0, v12

    if-ge v5, v0, :cond_6

    aget-object v0, v12, v5

    iget v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    div-float v4, v2, v3

    iput v4, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    add-float/2addr v1, v2

    div-float v2, v1, v3

    iput v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    array-length v0, v12

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, v12, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    return-void
.end method

.method public final getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I
    .locals 1

    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    return p0

    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    return p0
.end method

.method public final getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x3

    :goto_0
    invoke-static {}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->values()[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object p0

    rem-int/lit8 p1, p1, 0x4

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final placePoint(F)Landroid/util/Pair;
    .locals 7

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    :cond_0
    rem-float/2addr p1, v2

    add-float/2addr p1, v2

    rem-float/2addr p1, v2

    :cond_1
    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_1

    :cond_3
    :goto_0
    rem-float v0, p1, v2

    add-float/2addr v0, v2

    rem-float/2addr v0, v2

    :goto_1
    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    if-ge v3, v2, :cond_5

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v4, v6

    iget v6, v6, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    cmpg-float v6, v0, v6

    if-gtz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const-string p0, "PerimeterPathGuide"

    const-string v0, "Fell out of getRegionForPoint"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    :goto_3
    sget-object p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v5, p0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v4, p0

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v4, p0

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    sub-float/2addr p1, p0

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v4, p0

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V
    .locals 2

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p2, v1, p2

    iget-object p2, p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr v0, p3

    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    mul-float/2addr p0, p4

    const/4 p3, 0x1

    invoke-virtual {p2, v0, p0, p1, p3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method public final strokeSegmentInternal(Landroid/graphics/Path;FF)V
    .locals 8

    invoke-virtual {p0, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p3

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_2

    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    iget-object v6, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    invoke-virtual {p0, p1, v5, v7, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_1

    :cond_2
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, v5, v7, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
