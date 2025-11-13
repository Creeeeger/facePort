.class public final Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/decor/RoundedCornerResDelegate;


# instance fields
.field public bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public bottomRoundedSize:Landroid/util/Size;

.field public displayUniqueId:Ljava/lang/String;

.field public hasBottom:Z

.field public hasTop:Z

.field public physicalPixelDisplaySizeRatio:F

.field public reloadToken:I

.field public final res:Landroid/content/res/Resources;

.field public topRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public topRoundedSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->displayUniqueId:Ljava/lang/String;

    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadRes()V

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadMeasures$1()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "RoundedCornerResDelegate state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasTop:Z

    const-string v0, "  hasTop="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasBottom:Z

    const-string v0, "  hasBottom="

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "  topRoundedSize(w,h)=("

    const-string v2, ","

    const-string v3, ")"

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const-string v1, "  bottomRoundedSize(w,h)=("

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

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

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getBottomRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final getHasBottom()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasBottom:Z

    return p0
.end method

.method public final getHasTop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasTop:Z

    return p0
.end method

.method public final getTopRoundedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTopRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final reloadMeasures$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    :cond_1
    iget v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    new-instance v0, Landroid/util/Size;

    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedSize:Landroid/util/Size;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/util/Size;

    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedSize:Landroid/util/Size;

    :cond_4
    :goto_0
    return-void
.end method

.method public final reloadRes()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->displayUniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasTop:Z

    iput-boolean v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->hasBottom:Z

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    const v2, 0x7f03004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    const v4, 0x7f080fce

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    const v3, 0x7f03004a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-ltz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->res:Landroid/content/res/Resources;

    const v3, 0x7f080fcb

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setPhysicalPixelDisplaySizeRatio(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->physicalPixelDisplaySizeRatio:F

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadMeasures$1()V

    return-void
.end method

.method public final updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->displayUniqueId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->displayUniqueId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadToken:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadRes()V

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadMeasures$1()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    iget p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadToken:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadToken:I

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->reloadMeasures$1()V

    :cond_3
    :goto_0
    return-void
.end method
