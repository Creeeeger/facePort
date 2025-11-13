.class public final Landroidx/compose/ui/text/android/style/SkewXSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final skewX:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    return-void
.end method

.method public final updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget p0, p0, Landroidx/compose/ui/text/android/style/SkewXSpan;->skewX:F

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    add-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    return-void
.end method
