.class final Landroidx/compose/foundation/layout/PaddingKt$padding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $bottom:F

.field final synthetic $end:F

.field final synthetic $start:F

.field final synthetic $top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$bottom:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/platform/InspectorInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$start:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const-string v1, "start"

    iget-object p1, p1, Landroidx/compose/ui/platform/InspectorInfo;->properties:Landroidx/compose/ui/platform/ValueElementSequence;

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$top:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const-string/jumbo v1, "top"

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$end:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingKt$padding$1;->$bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    const-string v0, "bottom"

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
