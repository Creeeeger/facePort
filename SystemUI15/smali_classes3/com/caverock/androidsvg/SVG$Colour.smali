.class public final Lcom/caverock/androidsvg/SVG$Colour;
.super Lcom/caverock/androidsvg/SVG$SvgPaint;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final BLACK:Lcom/caverock/androidsvg/SVG$Colour;

.field public static final TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;


# instance fields
.field public final colour:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    new-instance v0, Lcom/caverock/androidsvg/SVG$Colour;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgPaint;-><init>()V

    iput p1, p0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%08x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
