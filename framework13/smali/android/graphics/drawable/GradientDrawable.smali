.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final blacklist DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final greylist-max-o DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final whitelist LINE:I = 0x2

.field public static final whitelist LINEAR_GRADIENT:I = 0x0

.field public static final whitelist OVAL:I = 0x1

.field public static final whitelist RADIAL_GRADIENT:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION:I = 0x1

.field private static final greylist-max-o RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final greylist-max-o RADIUS_TYPE_PIXELS:I = 0x0

.field public static final whitelist RECTANGLE:I = 0x0

.field public static final whitelist RING:I = 0x3

.field public static final whitelist SWEEP_GRADIENT:I = 0x2

.field public static blacklist sWrapNegativeAngleMeasurements:Z


# instance fields
.field private greylist-max-o mAlpha:I

.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private final greylist mFillPaint:Landroid/graphics/Paint;

.field private greylist-max-o mGradientIsDirty:Z

.field private greylist-max-o mGradientRadius:F

.field private greylist-max-p mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private greylist-max-o mLayerPaint:Landroid/graphics/Paint;

.field private greylist-max-o mMutated:Z

.field private blacklist mOverrideDensity:I

.field private greylist-max-p mPadding:Landroid/graphics/Rect;

.field private final greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o mPathIsDirty:Z

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private greylist-max-o mRingPath:Landroid/graphics/Path;

.field private greylist mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    .line 167
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 229
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 230
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/GradientDrawable$GradientState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 2441
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 188
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 190
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 191
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 197
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    .line 2442
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2444
    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2445
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 2
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
    .param p2, "colors"    # [I

    .line 237
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    .line 238
    return-void
.end method

.method private greylist-max-o applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1560
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1562
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v1, :cond_0

    .line 1563
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1565
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1566
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1569
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1573
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1576
    goto :goto_0

    .line 1575
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1576
    throw v2

    .line 1579
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    :goto_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v1, :cond_2

    .line 1580
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1582
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1583
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1586
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v1, :cond_3

    .line 1587
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1589
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1590
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1593
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v1, :cond_4

    .line 1594
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1596
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1597
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1600
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_4
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v1, :cond_5

    .line 1601
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1603
    .restart local v1    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1604
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1606
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_5
    return-void
.end method

.method private greylist-max-o buildPathIfDirty()V
    .locals 5

    .line 899
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 900
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_0

    .line 901
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 902
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 903
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 904
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 906
    :cond_0
    return-void
.end method

.method private greylist-max-o buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .locals 11
    .param p1, "st"    # Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1026
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object v0

    .line 1027
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1029
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1031
    .local v1, "sweep":F
    :goto_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1033
    .local v3, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1034
    .local v4, "x":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    .line 1036
    .local v6, "y":F
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    .line 1037
    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v5, v8

    .line 1039
    .local v5, "thickness":F
    :goto_1
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v7, :cond_4

    .line 1040
    iget v7, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v7, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v7, v8

    .line 1042
    .local v7, "radius":F
    :goto_2
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1043
    .local v8, "innerBounds":Landroid/graphics/RectF;
    sub-float v9, v4, v7

    sub-float v10, v6, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1045
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v3, v9

    .line 1046
    neg-float v9, v5

    neg-float v10, v5

    invoke-virtual {v3, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1048
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v9, :cond_5

    .line 1049
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    goto :goto_3

    .line 1051
    :cond_5
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    .line 1054
    :goto_3
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1057
    .local v9, "ringPath":Landroid/graphics/Path;
    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    const/high16 v2, -0x3c4c0000    # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 1058
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v9, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1060
    add-float v2, v4, v7

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1062
    add-float v2, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1064
    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1066
    neg-float v2, v1

    invoke-virtual {v9, v8, v1, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 1067
    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    goto :goto_4

    .line 1070
    :cond_6
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1071
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v8, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1074
    :goto_4
    return-object v9
.end method

.method private greylist-max-o ensureValidRect()Z
    .locals 22

    .line 1282
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    if-eqz v1, :cond_13

    .line 1283
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1286
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 1288
    .local v4, "inset":F
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_0

    .line 1289
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v4, v5, v6

    .line 1292
    :cond_0
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1294
    .local v5, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1297
    const/4 v6, 0x0

    .line 1298
    .local v6, "gradientColors":[I
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_2

    .line 1299
    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v7, v7

    new-array v6, v7, [I

    .line 1300
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_2

    .line 1301
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    if-eqz v8, :cond_1

    .line 1302
    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    .line 1300
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1306
    .end local v7    # "i":I
    :cond_2
    if-eqz v6, :cond_13

    .line 1307
    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 1310
    .local v7, "r":Landroid/graphics/RectF;
    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const v9, 0x461c4000    # 10000.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v8, :cond_4

    .line 1311
    iget-boolean v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v1, v9

    :cond_3
    move v1, v10

    .line 1312
    .local v1, "level":F
    sget-object v8, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    iget-object v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1342
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .local v8, "x0":F
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 1343
    .local v9, "y0":F
    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    .local v10, "x1":F
    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    .local v11, "y1":F
    goto/16 :goto_1

    .line 1338
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_0
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 1339
    .restart local v9    # "y0":F
    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    .restart local v10    # "x1":F
    move v11, v9

    .line 1340
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_1

    .line 1334
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_1
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 1335
    .restart local v9    # "y0":F
    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    .restart local v10    # "x1":F
    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    .line 1336
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_1

    .line 1330
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_2
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 1331
    .restart local v9    # "y0":F
    move v10, v8

    .restart local v10    # "x1":F
    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    .line 1332
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_1

    .line 1326
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_3
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    .line 1327
    .restart local v9    # "y0":F
    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    .restart local v10    # "x1":F
    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    .line 1328
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_1

    .line 1322
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_4
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 1323
    .restart local v9    # "y0":F
    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    .restart local v10    # "x1":F
    move v11, v9

    .line 1324
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_1

    .line 1318
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_5
    iget v8, v7, Landroid/graphics/RectF;->right:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 1319
    .restart local v9    # "y0":F
    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    .restart local v10    # "x1":F
    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    .line 1320
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_1

    .line 1314
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    :pswitch_6
    iget v8, v7, Landroid/graphics/RectF;->left:F

    .restart local v8    # "x0":F
    iget v9, v7, Landroid/graphics/RectF;->top:F

    .line 1315
    .restart local v9    # "y0":F
    move v10, v8

    .restart local v10    # "x1":F
    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    .line 1316
    .restart local v11    # "y1":F
    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    .line 1347
    .end local v8    # "x0":F
    .end local v9    # "y0":F
    .end local v10    # "x1":F
    .end local v11    # "y1":F
    .local v16, "x0":F
    .local v17, "y0":F
    .local v18, "x1":F
    .local v19, "y1":F
    :goto_1
    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget-object v13, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v14

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v21, v13

    move-object v13, v6

    move-object v2, v14

    move-object/from16 v14, v21

    move/from16 v21, v1

    move-object v1, v15

    .end local v1    # "level":F
    .local v21, "level":F
    move-object/from16 v15, v20

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1349
    .end local v21    # "level":F
    goto/16 :goto_8

    .end local v16    # "x0":F
    .end local v17    # "y0":F
    .end local v18    # "x1":F
    .end local v19    # "y1":F
    :cond_4
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_b

    .line 1350
    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v10

    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    .line 1351
    .local v1, "x0":F
    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    iget v11, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v10, v11

    add-float/2addr v2, v10

    .line 1353
    .local v2, "y0":F
    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1354
    .local v10, "radius":F
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 1357
    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v8, :cond_5

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v8, v8

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 1358
    .local v8, "width":F
    :goto_2
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v11, :cond_6

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v11, v11

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    .line 1359
    .local v11, "height":F
    :goto_3
    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float/2addr v10, v12

    .end local v8    # "width":F
    .end local v11    # "height":F
    goto :goto_4

    .line 1360
    :cond_7
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v11, v8, :cond_8

    .line 1361
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v10, v8

    goto :goto_5

    .line 1360
    :cond_8
    :goto_4
    nop

    .line 1364
    :goto_5
    iget-boolean v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v8, :cond_9

    .line 1365
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    mul-float/2addr v10, v8

    .line 1368
    :cond_9
    iput v10, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    .line 1370
    const/4 v8, 0x0

    cmpg-float v8, v10, v8

    if-gtz v8, :cond_a

    .line 1373
    const v10, 0x3a83126f    # 0.001f

    move v15, v10

    goto :goto_6

    .line 1370
    :cond_a
    move v15, v10

    .line 1376
    .end local v10    # "radius":F
    .local v15, "radius":F
    :goto_6
    iget-object v14, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/RadialGradient;

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v13

    move v9, v1

    move v10, v2

    move v11, v15

    move-object v12, v6

    move/from16 v18, v1

    move-object v1, v13

    .end local v1    # "x0":F
    .local v18, "x0":F
    move-object/from16 v13, v16

    move/from16 v16, v2

    move-object v2, v14

    .end local v2    # "y0":F
    .local v16, "y0":F
    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1378
    .end local v15    # "radius":F
    goto/16 :goto_8

    .end local v16    # "y0":F
    .end local v18    # "x0":F
    :cond_b
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-ne v2, v8, :cond_12

    .line 1379
    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v11, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v11

    add-float/2addr v2, v8

    .line 1380
    .local v2, "x0":F
    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    iget v12, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    .line 1382
    .local v8, "y0":F
    move-object v11, v6

    .line 1383
    .local v11, "tempColors":[I
    const/4 v12, 0x0

    .line 1385
    .local v12, "tempPositions":[F
    iget-boolean v13, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v13, :cond_11

    .line 1386
    iget-object v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 1387
    array-length v13, v6

    .line 1388
    .local v13, "length":I
    if-eqz v11, :cond_c

    array-length v14, v11

    add-int/lit8 v15, v13, 0x1

    if-eq v14, v15, :cond_d

    .line 1389
    :cond_c
    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [I

    iput-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object v11, v14

    .line 1391
    :cond_d
    invoke-static {v6, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1392
    add-int/lit8 v1, v13, -0x1

    aget v1, v6, v1

    aput v1, v11, v13

    .line 1394
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 1395
    .end local v12    # "tempPositions":[F
    .local v1, "tempPositions":[F
    add-int/lit8 v12, v13, -0x1

    int-to-float v12, v12

    div-float v12, v10, v12

    .line 1396
    .local v12, "fraction":F
    if-eqz v1, :cond_e

    array-length v14, v1

    add-int/lit8 v15, v13, 0x1

    if-eq v14, v15, :cond_f

    .line 1397
    :cond_e
    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [F

    iput-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object v1, v14

    .line 1400
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    .line 1401
    .local v14, "level":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v13, :cond_10

    .line 1402
    int-to-float v15, v9

    mul-float/2addr v15, v12

    mul-float/2addr v15, v14

    aput v15, v1, v9

    .line 1401
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1404
    .end local v9    # "i":I
    :cond_10
    aput v10, v1, v13

    move-object v12, v1

    .line 1407
    .end local v1    # "tempPositions":[F
    .end local v13    # "length":I
    .end local v14    # "level":F
    .local v12, "tempPositions":[F
    :cond_11
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/SweepGradient;

    invoke-direct {v9, v2, v8, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1412
    .end local v2    # "x0":F
    .end local v8    # "y0":F
    .end local v11    # "tempColors":[I
    .end local v12    # "tempPositions":[F
    :cond_12
    :goto_8
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_13

    .line 1413
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1417
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "inset":F
    .end local v5    # "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v6    # "gradientColors":[I
    .end local v7    # "r":Landroid/graphics/RectF;
    :cond_13
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I
    .locals 4
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1934
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1935
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1936
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1937
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1, p3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1

    .line 1939
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 1940
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .locals 4
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .line 1947
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 1948
    .local v0, "tv":Landroid/util/TypedValue;
    move v1, p2

    .line 1949
    .local v1, "v":F
    if-eqz v0, :cond_2

    .line 1950
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1951
    .local v2, "vIsFraction":Z
    :goto_0
    if-eqz v2, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    :goto_1
    move v1, v3

    .line 1953
    .end local v2    # "vIsFraction":Z
    :cond_2
    return v1
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1613
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 1615
    .local v0, "innerDepth":I
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    if-eq v2, v1, :cond_9

    .line 1616
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    .local v4, "depth":I
    if-ge v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v3, v2, :cond_9

    .line 1618
    :cond_0
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 1619
    goto :goto_0

    .line 1622
    :cond_1
    if-le v4, v0, :cond_2

    .line 1623
    goto :goto_0

    .line 1626
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1629
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1630
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1631
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 1632
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_3
    const-string v5, "gradient"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1633
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1634
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    .line 1635
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1636
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v5, "solid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1637
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1638
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    .line 1639
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1640
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string/jumbo v5, "stroke"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1641
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1642
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    .line 1643
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1644
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const-string v5, "corners"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1645
    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1646
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    .line 1647
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1648
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_7
    const-string/jumbo v5, "padding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1649
    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1650
    .restart local v5    # "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    .line 1651
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1653
    .end local v5    # "a":Landroid/content/res/TypedArray;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under <shape>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v2    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 1656
    .end local v4    # "depth":I
    :cond_9
    return-void
.end method

.method static greylist-max-o isOpaque(I)Z
    .locals 2
    .param p0, "color"    # I

    .line 2431
    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isOpaqueForState()Z
    .locals 2

    .line 1978
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 1979
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1980
    return v1

    .line 1985
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1986
    return v1

    .line 1989
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o modulateAlpha(I)I
    .locals 2
    .param p1, "alpha"    # I

    .line 652
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 653
    .local v0, "scale":I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private greylist-max-o setStrokeInternal(IIFF)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 414
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 415
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 416
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 419
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "e":Landroid/graphics/DashPathEffect;
    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_1

    .line 423
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    aput p4, v4, v1

    invoke-direct {v3, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v0, v3

    .line 425
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 426
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 427
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 428
    return-void
.end method

.method private greylist-max-o updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1680
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1683
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1686
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    .line 1688
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1690
    .local v1, "radius":I
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1693
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1695
    .local v4, "topLeftRadius":I
    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1697
    .local v6, "topRightRadius":I
    const/4 v7, 0x3

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 1699
    .local v8, "bottomLeftRadius":I
    const/4 v9, 0x4

    invoke-virtual {p1, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 1701
    .local v10, "bottomRightRadius":I
    if-ne v4, v1, :cond_0

    if-ne v6, v1, :cond_0

    if-ne v8, v1, :cond_0

    if-eq v10, v1, :cond_1

    .line 1704
    :cond_0
    const/16 v11, 0x8

    new-array v11, v11, [F

    int-to-float v12, v4

    aput v12, v11, v2

    int-to-float v2, v4

    aput v2, v11, v3

    int-to-float v2, v6

    aput v2, v11, v5

    int-to-float v2, v6

    aput v2, v11, v7

    int-to-float v2, v10

    aput v2, v11, v9

    const/4 v2, 0x5

    int-to-float v3, v10

    aput v3, v11, v2

    const/4 v2, 0x6

    int-to-float v3, v8

    aput v3, v11, v2

    const/4 v2, 0x7

    int-to-float v3, v8

    aput v3, v11, v2

    invoke-virtual {p0, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 1711
    :cond_1
    return-void
.end method

.method private greylist-max-o updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 19
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 1762
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1765
    .local v2, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1768
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    .line 1770
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v4, 0x5

    invoke-static {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 1772
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v5, 0x6

    invoke-static {v0, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 1774
    iget-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 1776
    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 1779
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 1781
    .local v7, "startCSL":Landroid/content/res/ColorStateList;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 1783
    .local v9, "centerCSL":Landroid/content/res/ColorStateList;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 1786
    .local v11, "endCSL":Landroid/content/res/ColorStateList;
    iget-object v12, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v3

    .line 1787
    .local v12, "hasGradientColors":Z
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->hasCenterColor()Z

    move-result v13

    .line 1789
    .local v13, "hasGradientCenter":Z
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_1

    :cond_1
    move v14, v3

    .line 1790
    .local v14, "startColor":I
    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    goto :goto_2

    :cond_2
    move v15, v3

    .line 1791
    .local v15, "centerColor":I
    :goto_2
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_3

    :cond_3
    move/from16 v16, v3

    .line 1793
    .local v16, "endColor":I
    :goto_3
    if-eqz v12, :cond_4

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_4

    .line 1794
    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    .line 1796
    :cond_4
    if-eqz v13, :cond_5

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    if-eqz v4, :cond_5

    .line 1797
    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    .line 1799
    :cond_5
    if-eqz v13, :cond_6

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v6

    if-eqz v4, :cond_6

    .line 1801
    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_4

    .line 1802
    :cond_6
    if-eqz v12, :cond_7

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    if-eqz v4, :cond_7

    .line 1805
    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    .line 1808
    :cond_7
    :goto_4
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v13, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v4, v10

    .line 1811
    .local v4, "hasCenterColor":Z
    :goto_6
    const/4 v5, 0x3

    if-eqz v4, :cond_e

    .line 1812
    new-array v8, v5, [Landroid/content/res/ColorStateList;

    iput-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1813
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1814
    if-eqz v7, :cond_a

    move-object/from16 v17, v7

    goto :goto_7

    :cond_a
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_7
    aput-object v17, v8, v3

    .line 1815
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1816
    if-eqz v9, :cond_b

    move-object/from16 v17, v9

    goto :goto_8

    :cond_b
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_8
    aput-object v17, v8, v10

    .line 1817
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1818
    if-eqz v11, :cond_c

    move-object/from16 v17, v11

    goto :goto_9

    :cond_c
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_9
    aput-object v17, v8, v6

    .line 1820
    new-array v8, v5, [F

    iput-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 1821
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/16 v17, 0x0

    aput v17, v8, v3

    .line 1823
    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v18, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v18

    if-eqz v5, :cond_d

    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    goto :goto_a

    :cond_d
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    :goto_a
    aput v5, v8, v10

    .line 1824
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v6

    goto :goto_d

    .line 1826
    :cond_e
    new-array v5, v6, [Landroid/content/res/ColorStateList;

    iput-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1827
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1828
    if-eqz v7, :cond_f

    move-object v6, v7

    goto :goto_b

    :cond_f
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_b
    aput-object v6, v5, v3

    .line 1829
    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    .line 1830
    if-eqz v11, :cond_10

    move-object v6, v11

    goto :goto_c

    :cond_10
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_c
    aput-object v6, v5, v10

    .line 1833
    :goto_d
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v5, v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    .line 1841
    .local v5, "angle":I
    sget-boolean v6, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    if-eqz v6, :cond_11

    .line 1842
    rem-int/lit16 v6, v5, 0x168

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    goto :goto_e

    .line 1844
    :cond_11
    rem-int/lit16 v6, v5, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    .line 1847
    :goto_e
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    if-ltz v6, :cond_12

    .line 1848
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    sparse-switch v6, :sswitch_data_0

    goto :goto_f

    .line 1871
    :sswitch_0
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_f

    .line 1868
    :sswitch_1
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1869
    goto :goto_f

    .line 1865
    :sswitch_2
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1866
    goto :goto_f

    .line 1862
    :sswitch_3
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1863
    goto :goto_f

    .line 1859
    :sswitch_4
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1860
    goto :goto_f

    .line 1856
    :sswitch_5
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1857
    goto :goto_f

    .line 1853
    :sswitch_6
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1854
    goto :goto_f

    .line 1850
    :sswitch_7
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1851
    nop

    .line 1872
    :goto_f
    goto :goto_10

    .line 1875
    :cond_12
    sget-object v6, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1878
    :goto_10
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 1879
    .local v6, "tv":Landroid/util/TypedValue;
    if-eqz v6, :cond_16

    .line 1882
    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x6

    if-ne v8, v10, :cond_14

    .line 1883
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    .line 1885
    .local v8, "radius":F
    iget v10, v6, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v10, 0x0

    and-int/lit8 v3, v3, 0xf

    .line 1887
    .local v3, "unit":I
    const/4 v10, 0x1

    if-ne v3, v10, :cond_13

    .line 1888
    const/4 v10, 0x2

    .local v10, "radiusType":I
    goto :goto_11

    .line 1890
    .end local v10    # "radiusType":I
    :cond_13
    const/4 v10, 0x1

    .line 1892
    .end local v3    # "unit":I
    .restart local v10    # "radiusType":I
    :goto_11
    goto :goto_12

    .end local v8    # "radius":F
    .end local v10    # "radiusType":I
    :cond_14
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x5

    if-ne v3, v8, :cond_15

    .line 1893
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    .line 1894
    .restart local v8    # "radius":F
    const/4 v10, 0x0

    .restart local v10    # "radiusType":I
    goto :goto_12

    .line 1896
    .end local v8    # "radius":F
    .end local v10    # "radiusType":I
    :cond_15
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    .line 1897
    .restart local v8    # "radius":F
    const/4 v10, 0x0

    .line 1900
    .restart local v10    # "radiusType":I
    :goto_12
    iput v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 1901
    iput v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    .line 1903
    .end local v8    # "radius":F
    .end local v10    # "radiusType":I
    :cond_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2d -> :sswitch_6
        0x5a -> :sswitch_5
        0x87 -> :sswitch_4
        0xb4 -> :sswitch_3
        0xe1 -> :sswitch_2
        0x10e -> :sswitch_1
        0x13b -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1659
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1662
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1665
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    .line 1667
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 1668
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1671
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1672
    .local v1, "pad":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 1673
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 1674
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x3

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 1675
    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 1672
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1676
    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1677
    return-void
.end method

.method private blacklist updateGradientDrawableSize(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .line 1906
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1909
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1912
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    .line 1915
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 1916
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1917
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1918
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    iput v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1919
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    int-to-float v4, v4

    const/high16 v5, 0x43200000    # 160.0f

    div-float/2addr v4, v5

    iput v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1921
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1923
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->getDimensionPixelSize(Landroid/content/res/Resources;ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1925
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    goto :goto_0

    .line 1926
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 1927
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 1929
    :goto_0
    return-void
.end method

.method private greylist-max-o updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1746
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1749
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1752
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    .line 1754
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 1756
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 1757
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 1759
    :cond_0
    return-void
.end method

.method private greylist-max-o updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1714
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1717
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1720
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    .line 1724
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1725
    .local v1, "defaultStrokeWidth":I
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1727
    .local v2, "width":I
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 1730
    .local v3, "dashWidth":F
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1732
    .local v4, "colorStateList":Landroid/content/res/ColorStateList;
    if-nez v4, :cond_0

    .line 1733
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1736
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_1

    .line 1737
    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 1739
    .local v5, "dashGap":F
    invoke-virtual {p0, v2, v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 1740
    .end local v5    # "dashGap":F
    goto :goto_0

    .line 1741
    :cond_1
    invoke-virtual {p0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 1743
    :goto_0
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2448
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2450
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2451
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 2452
    .local v1, "currentState":[I
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 2453
    .local v3, "stateColor":I
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2454
    .end local v1    # "currentState":[I
    .end local v3    # "stateColor":I
    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    .line 2458
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2461
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2464
    :goto_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 2466
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v3, 0x1

    if-ltz v1, :cond_3

    .line 2467
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 2468
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2469
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2471
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    .line 2472
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 2473
    .restart local v1    # "currentState":[I
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 2475
    .local v4, "strokeStateColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2478
    .end local v1    # "currentState":[I
    .end local v4    # "strokeStateColor":I
    :cond_2
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    .line 2479
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v6, v5, v2

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v5, v3

    invoke-direct {v1, v5, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2481
    .local v1, "e":Landroid/graphics/DashPathEffect;
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2485
    .end local v1    # "e":Landroid/graphics/DashPathEffect;
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 2487
    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 2489
    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-$$Nest$mcomputeOpacity(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 2490
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1501
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1504
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1507
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    .line 1509
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 1510
    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1512
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    .line 1513
    const/4 v1, 0x7

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 1516
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v1, v3, :cond_0

    .line 1517
    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 1521
    :cond_0
    const/16 v1, 0x8

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 1524
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v1, v3, :cond_1

    .line 1525
    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 1529
    :cond_1
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 1533
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1534
    .local v1, "tintMode":I
    if-eq v1, v3, :cond_3

    .line 1535
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1538
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1539
    .local v2, "tint":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_4

    .line 1540
    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1543
    :cond_4
    const/16 v3, 0xa

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 1545
    .local v3, "insetLeft":I
    const/16 v4, 0xb

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1547
    .local v4, "insetTop":I
    const/16 v5, 0xc

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1549
    .local v5, "insetRight":I
    const/16 v6, 0xd

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1551
    .local v6, "insetBottom":I
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 1552
    return-void
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 4
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1451
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1453
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1454
    .local v0, "state":Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-nez v0, :cond_0

    .line 1455
    return-void

    .line 1459
    :cond_0
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    if-lez v1, :cond_1

    .line 1460
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    goto :goto_0

    .line 1462
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1465
    :goto_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v1, :cond_2

    .line 1466
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1468
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1469
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1472
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1473
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1476
    :cond_3
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1477
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1480
    :cond_4
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1481
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1484
    :cond_5
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    .line 1485
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 1486
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1487
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1485
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1492
    .end local v1    # "i":I
    :cond_7
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    .line 1494
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1495
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .locals 1

    .line 1556
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .locals 1

    .line 2054
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 2055
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2056
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 749
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    return-void

    .line 756
    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    .line 757
    .local v8, "prevFillAlpha":I
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v9, v1

    .line 759
    .local v9, "prevStrokeAlpha":I
    invoke-direct {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    .line 760
    .local v10, "currFillAlpha":I
    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    .line 762
    .local v11, "currStrokeAlpha":I
    const/4 v12, 0x0

    const/4 v1, 0x1

    if-lez v11, :cond_2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_2

    .line 763
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    move v13, v3

    .line 764
    .local v13, "haveStroke":Z
    if-lez v10, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    move v14, v3

    .line 765
    .local v14, "haveFill":Z
    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 766
    .local v15, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    :goto_3
    move-object v6, v3

    .line 773
    .local v6, "colorFilter":Landroid/graphics/ColorFilter;
    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/16 v3, 0xff

    if-ge v11, v3, :cond_6

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-lt v4, v3, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    move/from16 v16, v2

    .line 783
    .local v16, "useLayer":Z
    if-eqz v16, :cond_8

    .line 784
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_7

    .line 785
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 787
    :cond_7
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 788
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 789
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 791
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    .line 792
    .local v17, "rad":F
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move-object v12, v6

    .end local v6    # "colorFilter":Landroid/graphics/ColorFilter;
    .local v12, "colorFilter":Landroid/graphics/ColorFilter;
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 798
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 799
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 800
    .end local v17    # "rad":F
    goto :goto_4

    .line 804
    .end local v12    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v6    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_8
    move-object v12, v6

    .end local v6    # "colorFilter":Landroid/graphics/ColorFilter;
    .restart local v12    # "colorFilter":Landroid/graphics/ColorFilter;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 805
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 806
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 807
    if-eqz v12, :cond_9

    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_9

    .line 808
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 810
    :cond_9
    if-eqz v13, :cond_a

    .line 811
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 812
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 813
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 817
    :cond_a
    :goto_4
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    .line 862
    :pswitch_0
    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v1

    .line 863
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 864
    if-eqz v13, :cond_11

    .line 865
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 854
    .end local v1    # "path":Landroid/graphics/Path;
    :pswitch_1
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 855
    .local v6, "r":Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    .line 856
    .local v17, "y":F
    if-eqz v13, :cond_b

    .line 857
    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "r":Landroid/graphics/RectF;
    .local v19, "r":Landroid/graphics/RectF;
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 856
    .end local v19    # "r":Landroid/graphics/RectF;
    .restart local v6    # "r":Landroid/graphics/RectF;
    :cond_b
    move-object/from16 v19, v6

    .end local v6    # "r":Landroid/graphics/RectF;
    .restart local v19    # "r":Landroid/graphics/RectF;
    goto/16 :goto_5

    .line 848
    .end local v17    # "y":F
    .end local v19    # "r":Landroid/graphics/RectF;
    :pswitch_2
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 849
    if-eqz v13, :cond_11

    .line 850
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 819
    :pswitch_3
    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v1, :cond_c

    .line 820
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 821
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 822
    if-eqz v13, :cond_11

    .line 823
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 825
    :cond_c
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    .line 831
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 832
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 831
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 833
    .local v1, "rad":F
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 834
    if-eqz v13, :cond_d

    .line 835
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 837
    .end local v1    # "rad":F
    :cond_d
    goto :goto_5

    .line 838
    :cond_e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_f

    if-nez v12, :cond_f

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 839
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 840
    :cond_f
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 842
    :cond_10
    if-eqz v13, :cond_11

    .line 843
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 870
    :cond_11
    :goto_5
    if-eqz v16, :cond_12

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    .line 873
    :cond_12
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 874
    if-eqz v13, :cond_13

    .line 875
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 878
    :cond_13
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 1211
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .locals 2

    .line 1198
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1134
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1225
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColors()[I
    .locals 3

    .line 734
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 735
    const/4 v0, 0x0

    return-object v0

    .line 737
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v0, v0

    new-array v0, v0, [I

    .line 738
    .local v0, "colors":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 739
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 740
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v1

    .line 738
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1973
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 1974
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public whitelist getCornerRadii()[F
    .locals 2

    .line 287
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 288
    .local v0, "radii":[F
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    return-object v1

    .line 291
    :cond_0
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    return-object v1
.end method

.method public whitelist getCornerRadius()F
    .locals 1

    .line 327
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public whitelist getGradientCenterX()F
    .locals 1

    .line 543
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public whitelist getGradientCenterY()F
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public whitelist getGradientRadius()F
    .locals 2

    .line 585
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 586
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    .line 590
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public whitelist getGradientType()I
    .locals 1

    .line 508
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public whitelist getInnerRadius()I
    .locals 1

    .line 953
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    return v0
.end method

.method public whitelist getInnerRadiusRatio()F
    .locals 1

    .line 931
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    return v0
.end method

.method public whitelist getIntrinsicHeight()I
    .locals 1

    .line 1963
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .locals 1

    .line 1958
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public whitelist getOpacity()I
    .locals 2

    .line 1254
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    .line 1254
    :goto_0
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .line 1968
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .locals 1

    .line 663
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public whitelist getOutline(Landroid/graphics/Outline;)V
    .locals 9
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 1994
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1995
    .local v0, "st":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1998
    .local v1, "bounds":Landroid/graphics/Rect;
    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 2000
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2001
    .local v2, "useFillOpacity":Z
    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2002
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    goto :goto_1

    .line 2003
    :cond_2
    move v4, v3

    .line 2001
    :goto_1
    invoke-virtual {p1, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 2005
    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/high16 v5, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    .line 2038
    return-void

    .line 2027
    :pswitch_0
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_3

    .line 2028
    const v3, 0x38d1b717    # 1.0E-4f

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v3, v5

    .line 2029
    .local v3, "halfStrokeWidth":F
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    .line 2030
    .local v4, "centerY":F
    sub-float v5, v4, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2031
    .local v5, "top":I
    add-float v6, v4, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 2033
    .local v6, "bottom":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v7, v5, v8, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 2034
    return-void

    .line 2022
    .end local v3    # "halfStrokeWidth":F
    .end local v4    # "centerY":F
    .end local v5    # "top":I
    .end local v6    # "bottom":I
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 2023
    return-void

    .line 2007
    :pswitch_2
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_4

    .line 2008
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    .line 2009
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 2010
    return-void

    .line 2013
    :cond_4
    const/4 v4, 0x0

    .line 2014
    .local v4, "rad":F
    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_5

    .line 2016
    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 2017
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 2016
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2019
    :cond_5
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 2020
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 242
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 244
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public whitelist getShape()I
    .locals 1

    .line 476
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public whitelist getThickness()I
    .locals 1

    .line 1000
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    return v0
.end method

.method public whitelist getThicknessRatio()F
    .locals 1

    .line 979
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    return v0
.end method

.method public whitelist getUseLevel()Z
    .locals 1

    .line 648
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .locals 2

    .line 1190
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1191
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1192
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1193
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1191
    :goto_0
    return v1
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1434
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    if-lez v0, :cond_0

    .line 1435
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    goto :goto_0

    .line 1437
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    .line 1440
    :goto_0
    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1441
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1442
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1444
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 1446
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 1447
    return-void
.end method

.method public whitelist isStateful()Z
    .locals 2

    .line 1181
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1182
    .local v0, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1183
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1184
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1185
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 1182
    :goto_1
    return v1
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 2042
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2043
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 2044
    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 2045
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 2047
    :cond_0
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 1260
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 1261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 1262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1263
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1264
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 1268
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 1270
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 1271
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1272
    return v0
.end method

.method protected whitelist onStateChange([I)Z
    .locals 8
    .param p1, "stateSet"    # [I

    .line 1139
    const/4 v0, 0x0

    .line 1141
    .local v0, "invalidateSelf":Z
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 1142
    .local v1, "s":Landroid/graphics/drawable/GradientDrawable$GradientState;
    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    .line 1143
    .local v2, "solidColors":Landroid/content/res/ColorStateList;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 1145
    .local v4, "newColor":I
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    .line 1146
    .local v5, "oldColor":I
    if-eq v5, v4, :cond_0

    .line 1147
    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1148
    const/4 v0, 0x1

    .line 1152
    .end local v4    # "newColor":I
    .end local v5    # "oldColor":I
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 1153
    .local v4, "strokePaint":Landroid/graphics/Paint;
    if-eqz v4, :cond_1

    .line 1154
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    .line 1155
    .local v5, "strokeColors":Landroid/content/res/ColorStateList;
    if-eqz v5, :cond_1

    .line 1156
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 1157
    .local v6, "newColor":I
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    .line 1158
    .local v7, "oldColor":I
    if-eq v7, v6, :cond_1

    .line 1159
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1160
    const/4 v0, 0x1

    .line 1165
    .end local v5    # "strokeColors":Landroid/content/res/ColorStateList;
    .end local v6    # "newColor":I
    .end local v7    # "oldColor":I
    :cond_1
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v5, :cond_2

    .line 1166
    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1168
    const/4 v0, 0x1

    .line 1171
    :cond_2
    if-eqz v0, :cond_3

    .line 1172
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1173
    const/4 v3, 0x1

    return v3

    .line 1176
    :cond_3
    return v3
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1203
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 1204
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 1205
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1207
    :cond_0
    return-void
.end method

.method public greylist-max-o setAntiAlias(Z)V
    .locals 1
    .param p1, "aa"    # Z

    .line 895
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 896
    return-void
.end method

.method public whitelist setColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .line 1091
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1092
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1093
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1094
    return-void
.end method

.method public whitelist setColor(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 1112
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1113
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    .line 1116
    .local v1, "stateSet":[I
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 1117
    .local v0, "color":I
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    .line 1118
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1119
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1121
    .end local v0    # "color":I
    .end local v1    # "stateSet":[I
    :goto_0
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1230
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_0

    .line 1231
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1232
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1234
    :cond_0
    return-void
.end method

.method public whitelist setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    .line 700
    return-void
.end method

.method public whitelist setColors([I[F)V
    .locals 1
    .param p1, "colors"    # [I
    .param p2, "offsets"    # [F

    .line 719
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    .line 720
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 722
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 723
    return-void
.end method

.method public whitelist setCornerRadii([F)V
    .locals 1
    .param p1, "radii"    # [F

    .line 268
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 270
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 271
    return-void
.end method

.method public whitelist setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 314
    return-void
.end method

.method public whitelist setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 1216
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_0

    .line 1217
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    .line 1218
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1220
    :cond_0
    return-void
.end method

.method public whitelist setGradientCenter(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 530
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 532
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 533
    return-void
.end method

.method public whitelist setGradientRadius(F)V
    .locals 2
    .param p1, "gradientRadius"    # F

    .line 572
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 574
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 575
    return-void
.end method

.method public whitelist setGradientType(I)V
    .locals 1
    .param p1, "gradient"    # I

    .line 493
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 495
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 496
    return-void
.end method

.method public whitelist setInnerRadius(I)V
    .locals 1
    .param p1, "innerRadius"    # I

    .line 941
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 942
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 943
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 944
    return-void
.end method

.method public whitelist setInnerRadiusRatio(F)V
    .locals 2
    .param p1, "innerRadiusRatio"    # F

    .line 916
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 919
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 921
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 922
    return-void

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .locals 1
    .param p1, "orientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 679
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 681
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 682
    return-void
.end method

.method blacklist setOverrideDensity(I)V
    .locals 0
    .param p1, "overrideDensity"    # I

    .line 1423
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mOverrideDensity:I

    .line 1424
    return-void
.end method

.method public whitelist setPadding(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1016
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 1020
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1021
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 1022
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1023
    return-void
.end method

.method public whitelist setShape(I)V
    .locals 1
    .param p1, "shape"    # I

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 463
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 464
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 465
    return-void
.end method

.method public whitelist setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 444
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 446
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 447
    return-void
.end method

.method public whitelist setStroke(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "color"    # I

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 345
    return-void
.end method

.method public whitelist setStroke(IIFF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "color"    # I
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 380
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 381
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 382
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 362
    return-void
.end method

.method public whitelist setStroke(ILandroid/content/res/ColorStateList;FF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;
    .param p3, "dashWidth"    # F
    .param p4, "dashGap"    # F

    .line 402
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    .line 404
    if-nez p2, :cond_0

    .line 405
    const/4 v0, 0x0

    .local v0, "color":I
    goto :goto_0

    .line 407
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    .line 408
    .local v0, "stateSet":[I
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    .line 410
    .local v0, "color":I
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    .line 411
    return-void
.end method

.method public whitelist setThickness(I)V
    .locals 1
    .param p1, "thickness"    # I

    .line 988
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 990
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 991
    return-void
.end method

.method public whitelist setThicknessRatio(F)V
    .locals 2
    .param p1, "thicknessRatio"    # F

    .line 964
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 967
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 969
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 970
    return-void

    .line 965
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 1246
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1247
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1249
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1250
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1238
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    .line 1239
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 1240
    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 1241
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 1242
    return-void
.end method

.method public whitelist setUseLevel(Z)V
    .locals 1
    .param p1, "useLevel"    # Z

    .line 633
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    .line 635
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 636
    return-void
.end method

.method public greylist-max-o setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .line 886
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 887
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 888
    return-void
.end method
