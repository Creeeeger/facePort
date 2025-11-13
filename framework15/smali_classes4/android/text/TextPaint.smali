.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public whitelist baselineShift:I

.field public whitelist bgColor:I

.field public whitelist density:F

.field public whitelist drawableState:[I

.field public whitelist linkColor:I

.field public whitelist underlineColor:I

.field public whitelist underlineThickness:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/TextPaint;->density:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    return-void
.end method


# virtual methods
.method public whitelist getUnderlineThickness()F
    .locals 1

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    return v0

    :cond_0
    invoke-super {p0}, Landroid/graphics/Paint;->getUnderlineThickness()F

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method

.method public greylist setUnderlineText(IF)V
    .locals 0

    iput p1, p0, Landroid/text/TextPaint;->underlineColor:I

    iput p2, p0, Landroid/text/TextPaint;->underlineThickness:F

    return-void
.end method
