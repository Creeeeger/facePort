.class public final Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return-void
.end method


# virtual methods
.method public final processText(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return-void
.end method
