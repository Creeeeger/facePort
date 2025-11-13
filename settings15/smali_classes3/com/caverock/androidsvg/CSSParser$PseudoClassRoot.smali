.class public final Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 0

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    instance-of p0, p2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    check-cast p2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :pswitch_1
    iget-object p0, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "target"

    return-object p0

    :pswitch_0
    const-string p0, "empty"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "root"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
