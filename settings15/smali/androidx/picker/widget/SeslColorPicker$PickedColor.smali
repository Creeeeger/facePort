.class public final Landroidx/picker/widget/SeslColorPicker$PickedColor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mColor:Ljava/lang/Integer;

.field public mHsv:[F


# virtual methods
.method public final setColor(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    iget-object p1, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslColorPicker$PickedColor;->mHsv:[F

    invoke-static {p1, p0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method
