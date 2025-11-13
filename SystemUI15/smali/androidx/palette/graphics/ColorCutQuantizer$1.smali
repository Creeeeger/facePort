.class public final Landroidx/palette/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    check-cast p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual {p2}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p0

    invoke-virtual {p1}, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method
