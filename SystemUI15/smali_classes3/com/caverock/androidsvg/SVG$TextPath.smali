.class public final Lcom/caverock/androidsvg/SVG$TextPath;
.super Lcom/caverock/androidsvg/SVG$TextContainer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$TextChild;


# instance fields
.field public href:Ljava/lang/String;

.field public startOffset:Lcom/caverock/androidsvg/SVG$Length;

.field public textRoot:Lcom/caverock/androidsvg/SVG$Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$TextContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNodeName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "textPath"

    return-object p0
.end method

.method public final getTextRoot()Lcom/caverock/androidsvg/SVG$Text;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$TextPath;->textRoot:Lcom/caverock/androidsvg/SVG$Text;

    return-object p0
.end method
