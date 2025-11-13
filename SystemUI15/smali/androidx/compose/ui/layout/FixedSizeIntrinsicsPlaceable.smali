.class public final Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/Placeable;->setMeasuredSize-ozmzZPI(J)V

    return-void
.end method


# virtual methods
.method public final get(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method

.method public final placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    return-void
.end method
