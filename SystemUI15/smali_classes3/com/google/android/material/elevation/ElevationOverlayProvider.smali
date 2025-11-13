.class public final Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final OVERLAY_ACCENT_COLOR_ALPHA:I


# instance fields
.field public final colorSurface:I

.field public final displayDensity:F

.field public final elevationOverlayAccentColor:I

.field public final elevationOverlayColor:I

.field public final elevationOverlayEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f040221

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    const v0, 0x7f040220

    invoke-static {v0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    const v0, 0x7f04021f

    invoke-static {v0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v5, v0

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    const v0, 0x7f040166

    invoke-static {v0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(ILandroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_6

    :cond_6
    iget v0, v0, Landroid/util/TypedValue;->data:I

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_8
    move v6, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v7, p1, Landroid/util/DisplayMetrics;->density:F

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(ZIIIF)V

    return-void
.end method

.method public constructor <init>(ZIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    iput p2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    iput p3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    iput p4, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    iput p5, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    return-void
.end method


# virtual methods
.method public final compositeOverlayIfNeeded(FI)I
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xff

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-lez v3, :cond_1

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    double-to-float p1, v3

    const/high16 v1, 0x40900000    # 4.5f

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    invoke-static {p1, p2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(FII)I

    move-result p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    iget p0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    if-eqz p0, :cond_2

    sget p1, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-static {p0, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p2

    :cond_2
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0

    :cond_3
    return p2
.end method
