.class public abstract Lcom/caverock/androidsvg/SVG$GraphicsElement;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# instance fields
.field public requiredExtensions:Ljava/lang/String;

.field public requiredFeatures:Ljava/util/Set;

.field public requiredFonts:Ljava/util/Set;

.field public requiredFormats:Ljava/util/Set;

.field public systemLanguage:Ljava/util/Set;

.field public transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/Set;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getRequiredExtensions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    return-object p0
.end method

.method public final getRequiredFeatures()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/Set;

    return-object p0
.end method

.method public final getRequiredFonts()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/Set;

    return-object p0
.end method

.method public final getRequiredFormats()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/Set;

    return-object p0
.end method

.method public final getSystemLanguage()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/Set;

    return-object p0
.end method

.method public final setRequiredExtensions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    return-void
.end method

.method public final setRequiredFeatures(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/Set;

    return-void
.end method

.method public final setRequiredFonts(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/Set;

    return-void
.end method

.method public final setRequiredFormats(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/Set;

    return-void
.end method

.method public final setSystemLanguage(Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/Set;

    return-void
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    return-void
.end method
