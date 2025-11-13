.class public interface abstract Landroidx/compose/ui/text/style/TextForegroundStyle;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->$$INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    sput-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAlpha()F
.end method

.method public abstract getBrush()Landroidx/compose/ui/graphics/Brush;
.end method

.method public abstract getColor-0d7_KjU()J
.end method

.method public merge(Landroidx/compose/ui/text/style/TextForegroundStyle;)Landroidx/compose/ui/text/style/TextForegroundStyle;
    .locals 3

    instance-of v0, p1, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v0, :cond_1

    instance-of v1, p0, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/compose/ui/text/style/BrushStyle;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    check-cast p1, Landroidx/compose/ui/text/style/BrushStyle;

    iget p1, p1, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    new-instance v2, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;)V

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$1;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :cond_0
    invoke-direct {v0, v1, p1}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    move-object p0, v0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, p0, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v1, :cond_2

    :goto_0
    move-object p0, p1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$2;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$2;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;->INSTANCE:Landroidx/compose/ui/text/style/TextForegroundStyle$Unspecified;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextForegroundStyle$merge$2;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    :goto_1
    return-object p0
.end method
