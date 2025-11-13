.class public abstract Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# instance fields
.field public children:Ljava/util/List;

.field public requiredExtensions:Ljava/lang/String;

.field public requiredFeatures:Ljava/util/Set;

.field public requiredFonts:Ljava/util/Set;

.field public requiredFormats:Ljava/util/Set;

.field public systemLanguage:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getChildren()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->children:Ljava/util/List;

    return-object p0
.end method

.method public final getRequiredExtensions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequiredFeatures()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-object p0
.end method

.method public final getRequiredFonts()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-object p0
.end method

.method public final getRequiredFormats()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-object p0
.end method

.method public final getSystemLanguage()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setRequiredExtensions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredExtensions:Ljava/lang/String;

    return-void
.end method

.method public final setRequiredFeatures(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFeatures:Ljava/util/Set;

    return-void
.end method

.method public final setRequiredFonts(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFonts:Ljava/util/Set;

    return-void
.end method

.method public final setRequiredFormats(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->requiredFormats:Ljava/util/Set;

    return-void
.end method

.method public final setSystemLanguage(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$SvgConditionalContainer;->systemLanguage:Ljava/util/Set;

    return-void
.end method
