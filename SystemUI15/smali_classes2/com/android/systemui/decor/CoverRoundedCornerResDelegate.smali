.class public final Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/decor/RoundedCornerResDelegate;


# instance fields
.field public final bottomRoundedSize:Landroid/util/Size;

.field public final hasTop:Z

.field public final topRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public final topRoundedSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f050012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->hasTop:Z

    const v0, 0x7f080fcd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, "CoverRoundedCornerResDelegate state:"

    const-string v0, "  hasRoundedCorner="

    invoke-static {p1, p2, v0}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->hasTop:Z

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const-string v0, "  roundedSize(w,h)=("

    const-string v1, ","

    const-string v2, ")"

    invoke-static {p2, p0, v0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBottomRoundedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBottomRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final getHasBottom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getHasTop()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->hasTop:Z

    return p0
.end method

.method public final getTopRoundedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getTopRoundedSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    return-object p0
.end method

.method public final setPhysicalPixelDisplaySizeRatio(F)V
    .locals 0

    return-void
.end method

.method public final updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method
