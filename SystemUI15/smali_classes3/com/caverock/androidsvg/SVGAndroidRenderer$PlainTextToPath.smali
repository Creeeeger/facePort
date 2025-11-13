.class public final Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final textAsPath:Landroid/graphics/Path;

.field public final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public final y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V
    .locals 1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$1;)V

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    iput-object p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 0

    instance-of p0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz p0, :cond_0

    const-string p0, "Using <textPath> elements in a clip path is not supported."

    const-string p1, "SVGAndroidRenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final processText(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->y:F

    const/4 v4, 0x0

    move-object v3, p1

    move-object v8, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->textAsPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;->x:F

    return-void
.end method
