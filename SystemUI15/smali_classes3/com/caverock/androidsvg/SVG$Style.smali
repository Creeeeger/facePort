.class public final Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

.field public clipPath:Ljava/lang/String;

.field public clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public color:Lcom/caverock/androidsvg/SVG$Colour;

.field public direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public display:Ljava/lang/Boolean;

.field public fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public fillOpacity:Ljava/lang/Float;

.field public fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field public fontFamily:Ljava/util/List;

.field public fontSize:Lcom/caverock/androidsvg/SVG$Length;

.field public fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field public fontWeight:Ljava/lang/Integer;

.field public imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field public markerEnd:Ljava/lang/String;

.field public markerMid:Ljava/lang/String;

.field public markerStart:Ljava/lang/String;

.field public mask:Ljava/lang/String;

.field public opacity:Ljava/lang/Float;

.field public overflow:Ljava/lang/Boolean;

.field public solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public solidOpacity:Ljava/lang/Float;

.field public specifiedFlags:J

.field public stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public stopOpacity:Ljava/lang/Float;

.field public stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

.field public strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

.field public strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field public strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field public strokeMiterLimit:Ljava/lang/Float;

.field public strokeOpacity:Ljava/lang/Float;

.field public strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

.field public textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field public textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field public viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field public viewportFillOpacity:Ljava/lang/Float;

.field public visibility:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    return-void
.end method

.method public static getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;
    .locals 8

    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    new-instance v6, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v6, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v6, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    new-instance v3, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x41400000    # 12.0f

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v3, v6, v7}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    const/16 v3, 0x190

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v5, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    return-object v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lcom/caverock/androidsvg/SVG$Length;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/caverock/androidsvg/SVG$Length;

    iput-object p0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    :cond_0
    return-object v0
.end method
