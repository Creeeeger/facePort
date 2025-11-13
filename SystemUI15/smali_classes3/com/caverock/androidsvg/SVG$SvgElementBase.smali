.class public abstract Lcom/caverock/androidsvg/SVG$SvgElementBase;
.super Lcom/caverock/androidsvg/SVG$SvgObject;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public baseStyle:Lcom/caverock/androidsvg/SVG$Style;

.field public classNames:Ljava/util/List;

.field public id:Ljava/lang/String;

.field public spacePreserve:Ljava/lang/Boolean;

.field public style:Lcom/caverock/androidsvg/SVG$Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVG$SvgObject;->getNodeName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
