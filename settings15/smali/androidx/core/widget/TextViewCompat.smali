.class public abstract Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setLineHeight(ILandroid/widget/TextView;)V
    .locals 2

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p0, v0, :cond_0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method
