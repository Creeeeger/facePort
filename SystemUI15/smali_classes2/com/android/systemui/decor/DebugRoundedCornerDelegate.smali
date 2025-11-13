.class public final Lcom/android/systemui/decor/DebugRoundedCornerDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/decor/RoundedCornerResDelegate;


# instance fields
.field public bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public bottomRoundedSize:Landroid/util/Size;

.field public color:I

.field public hasBottom:Z

.field public hasTop:Z

.field public final paint:Landroid/graphics/Paint;

.field public physicalPixelDisplaySizeRatio:F

.field public topRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public topRoundedSize:Landroid/util/Size;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->color:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final applyNewDebugCorners(Lcom/android/systemui/decor/DebugRoundedCornerModel;Lcom/android/systemui/decor/DebugRoundedCornerModel;)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasTop:Z

    iget-object v7, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->paint:Landroid/graphics/Paint;

    new-instance v8, Lcom/android/systemui/decor/PathDrawable;

    iget-object v2, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    iget v3, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iget v4, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    iget v5, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    iget v6, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/decor/PathDrawable;-><init>(Landroid/graphics/Path;IIFFLandroid/graphics/Paint;)V

    iput-object v8, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/util/Size;

    iget v2, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iget p1, p1, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$2;-><init>(Lcom/android/systemui/decor/DebugRoundedCornerDelegate;)V

    :goto_0
    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    iget-object v7, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->paint:Landroid/graphics/Paint;

    new-instance p1, Lcom/android/systemui/decor/PathDrawable;

    iget-object v2, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->path:Landroid/graphics/Path;

    iget v3, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iget v4, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    iget v5, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleX:F

    iget v6, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->scaleY:F

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/decor/PathDrawable;-><init>(Landroid/graphics/Path;IIFFLandroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/util/Size;

    iget v0, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->width:I

    iget p2, p2, Lcom/android/systemui/decor/DebugRoundedCornerModel;->height:I

    invoke-direct {p1, v0, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate$applyNewDebugCorners$4;-><init>(Lcom/android/systemui/decor/DebugRoundedCornerDelegate;)V

    :goto_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "DebugRoundedCornerDelegate state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasTop:Z

    const-string v0, "  hasTop="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    const-string v0, "  hasBottom="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "  topRoundedSize(w,h)=("

    const-string v2, ","

    const-string v3, ")"

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "  bottomRoundedSize(w,h)=("

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "  physicalPixelDisplaySizeRatio="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBottomRoundedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getBottomRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final getHasBottom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    return p0
.end method

.method public final getHasTop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasTop:Z

    return p0
.end method

.method public final getTopRoundedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTopRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final setPhysicalPixelDisplaySizeRatio(F)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    :cond_2
    iget p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_4

    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-int v2, v2

    invoke-direct {p1, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Landroid/util/Size;

    iget v1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    :cond_5
    :goto_0
    return-void
.end method

.method public final updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method
