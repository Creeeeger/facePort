.class public final Lcom/caverock/androidsvg/SVG$Rect;
.super Lcom/caverock/androidsvg/SVG$GraphicsElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public height:Lcom/caverock/androidsvg/SVG$Length;

.field public rx:Lcom/caverock/androidsvg/SVG$Length;

.field public ry:Lcom/caverock/androidsvg/SVG$Length;

.field public width:Lcom/caverock/androidsvg/SVG$Length;

.field public x:Lcom/caverock/androidsvg/SVG$Length;

.field public y:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "rect"

    return-object p0
.end method
