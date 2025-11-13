.class final Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;
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
.field final synthetic $height:I

.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $width:I


# direct methods
.method public constructor <init>(ILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$width:I

    iput-object p2, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$height:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget v0, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$width:I

    iget-object v1, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v1, v1, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    iget v2, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$height:I

    iget-object v3, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v3, v3, Landroidx/compose/ui/layout/Placeable;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iget-object p0, p0, Landroidx/compose/material3/MinimumInteractiveModifierNode$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {p1, p0, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
