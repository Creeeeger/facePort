.class final Lcom/android/compose/modifiers/PaddingModifier$measure$1;
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic $start:I

.field final synthetic $top:I

.field final synthetic this$0:Lcom/android/compose/modifiers/PaddingModifier;


# direct methods
.method public constructor <init>(Lcom/android/compose/modifiers/PaddingModifier;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->this$0:Lcom/android/compose/modifiers/PaddingModifier;

    iput-object p2, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iput p3, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$start:I

    iput p4, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$top:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->this$0:Lcom/android/compose/modifiers/PaddingModifier;

    iget-boolean v0, v0, Lcom/android/compose/modifiers/PaddingModifier;->rtlAware:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$start:I

    iget p0, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$top:I

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    iget v1, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$start:I

    iget p0, p0, Lcom/android/compose/modifiers/PaddingModifier$measure$1;->$top:I

    invoke-static {p1, v0, v1, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
