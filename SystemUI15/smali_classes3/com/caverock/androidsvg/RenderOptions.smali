.class public final Lcom/caverock/androidsvg/RenderOptions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field public final preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public final viewBox:Lcom/caverock/androidsvg/SVG$Box;

.field public final viewId:Ljava/lang/String;

.field public viewPort:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/RenderOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iget-object p1, p1, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-void
.end method
