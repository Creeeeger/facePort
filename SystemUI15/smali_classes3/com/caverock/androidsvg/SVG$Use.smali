.class public final Lcom/caverock/androidsvg/SVG$Use;
.super Lcom/caverock/androidsvg/SVG$Group;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public height:Lcom/caverock/androidsvg/SVG$Length;

.field public href:Ljava/lang/String;

.field public width:Lcom/caverock/androidsvg/SVG$Length;

.field public x:Lcom/caverock/androidsvg/SVG$Length;

.field public y:Lcom/caverock/androidsvg/SVG$Length;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$Group;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "use"

    return-object p0
.end method
