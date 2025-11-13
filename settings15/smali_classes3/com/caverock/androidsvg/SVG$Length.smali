.class public final Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final unit:Lcom/caverock/androidsvg/SVG$Unit;

.field public final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    sget-object p1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method public final floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    :goto_0
    if-nez v0, :cond_1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    :cond_1
    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v1, p1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_2

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    :goto_1
    mul-float/2addr p0, p1

    div-float/2addr p0, v2

    return p0

    :cond_2
    mul-float/2addr p1, p1

    mul-float/2addr v0, v0

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v0, v3

    double-to-float p1, v0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public final floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public final floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    :pswitch_0
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    :goto_0
    if-nez v0, :cond_1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    :cond_1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    :goto_1
    div-float/2addr p0, p1

    return p0

    :pswitch_1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    goto :goto_1

    :pswitch_2
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    goto :goto_1

    :pswitch_3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    mul-float/2addr p0, p1

    const p1, 0x41cb3333    # 25.4f

    goto :goto_1

    :pswitch_4
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    mul-float/2addr p0, p1

    const p1, 0x40228f5c    # 2.54f

    goto :goto_1

    :pswitch_5
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    mul-float/2addr p0, p1

    return p0

    :pswitch_6
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1

    :pswitch_7
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    mul-float/2addr p1, p0

    return p1

    :pswitch_8
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    :goto_0
    if-nez v0, :cond_1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    :cond_1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public final isNegative()Z
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isZero()Z
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
