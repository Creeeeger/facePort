.class public final Lcom/android/systemui/decor/PathDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final height:I

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;

.field public final scaleX:F

.field public final scaleY:F

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Path;IIFFLandroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/PathDrawable;->path:Landroid/graphics/Path;

    iput p2, p0, Lcom/android/systemui/decor/PathDrawable;->width:I

    iput p3, p0, Lcom/android/systemui/decor/PathDrawable;->height:I

    iput p4, p0, Lcom/android/systemui/decor/PathDrawable;->scaleX:F

    iput p5, p0, Lcom/android/systemui/decor/PathDrawable;->scaleY:F

    iput-object p6, p0, Lcom/android/systemui/decor/PathDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Path;IIFFLandroid/graphics/Paint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/decor/PathDrawable;-><init>(Landroid/graphics/Path;IIFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/decor/PathDrawable;->scaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/decor/PathDrawable;->scaleY:F

    cmpg-float v1, v2, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/decor/PathDrawable;->scaleY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/decor/PathDrawable;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/decor/PathDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/PathDrawable;->height:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/PathDrawable;->width:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
