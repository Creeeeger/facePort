.class final Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;
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
.field final synthetic $actionButtonPlaceX:I

.field final synthetic $actionButtonPlaceY:I

.field final synthetic $actionButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $dismissButtonPlaceX:I

.field final synthetic $dismissButtonPlaceY:I

.field final synthetic $dismissButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $textPlaceY:I

.field final synthetic $textPlaceable:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p2, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$textPlaceY:I

    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceX:I

    iput p5, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceY:I

    iput-object p6, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceX:I

    iput p8, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceY:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$textPlaceable:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$textPlaceY:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    iget-object v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceX:I

    iget v3, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$dismissButtonPlaceY:I

    invoke-virtual {p1, v0, v2, v3, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceable:Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceX:I

    iget p0, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$1$2;->$actionButtonPlaceY:I

    invoke-virtual {p1, v0, v2, p0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative(Landroidx/compose/ui/layout/Placeable;IIF)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
