.class final Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $communalContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/communal/domain/model/CommunalContentModel;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$communalContent:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$communalContent:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$gridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalHubKt$ScrollOnUpdatedLiveContentEffect$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, p1, p0}, Lcom/android/systemui/communal/ui/compose/CommunalHubKt;->ScrollOnUpdatedLiveContentEffect(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
