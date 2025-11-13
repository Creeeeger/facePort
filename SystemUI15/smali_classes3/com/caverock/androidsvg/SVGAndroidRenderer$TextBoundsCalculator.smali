.class public final Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bbox:Landroid/graphics/RectF;

.field public final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public x:F

.field public final y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .locals 1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$1;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    return-void
.end method


# virtual methods
.method public final doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 5

    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p0, v0, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "TextPath path reference \'%s\' not found"

    invoke-static {p1, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->path:Landroid/graphics/Path;

    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    return v1
.end method

.method public final processText(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    return-void
.end method
