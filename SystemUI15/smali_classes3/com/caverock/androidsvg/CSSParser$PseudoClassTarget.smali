.class public final Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/caverock/androidsvg/CSSParser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "target"

    return-object p0
.end method
