.class public final Lcom/caverock/androidsvg/SVG$SolidColor;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "solidColor"

    return-object p0
.end method
