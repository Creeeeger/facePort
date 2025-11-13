.class public abstract Lcom/caverock/androidsvg/SVG$SvgElementBase;
.super Lcom/caverock/androidsvg/SVG$SvgObject;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public baseStyle:Lcom/caverock/androidsvg/SVG$Style;

.field public classNames:Ljava/util/List;

.field public id:Ljava/lang/String;

.field public spacePreserve:Ljava/lang/Boolean;

.field public style:Lcom/caverock/androidsvg/SVG$Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
