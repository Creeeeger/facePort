.class public final Lcom/caverock/androidsvg/SVG$Marker;
.super Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;


# instance fields
.field public markerHeight:Lcom/caverock/androidsvg/SVG$Length;

.field public markerUnitsAreUser:Z

.field public markerWidth:Lcom/caverock/androidsvg/SVG$Length;

.field public orient:Ljava/lang/Float;

.field public refX:Lcom/caverock/androidsvg/SVG$Length;

.field public refY:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgViewBoxContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string p0, "marker"

    return-object p0
.end method
