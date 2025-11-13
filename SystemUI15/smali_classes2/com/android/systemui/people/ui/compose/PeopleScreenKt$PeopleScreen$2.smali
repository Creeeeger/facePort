.class final Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;
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
.field final synthetic $priorityTiles$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $recentTiles$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iput-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$priorityTiles$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$recentTiles$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$priorityTiles$delegate:Landroidx/compose/runtime/State;

    sget v0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->PeopleSpacePadding:F

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$recentTiles$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, -0x20435662

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onUserJourneyCancelled:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/people/ui/compose/PeopleScreenEmptyKt;->PeopleScreenEmpty(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const p2, -0x204356d2

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$priorityTiles$delegate:Landroidx/compose/runtime/State;

    invoke-interface {p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$recentTiles$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$2;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onTileClicked:Lkotlin/jvm/functions/Function1;

    const/16 v2, 0x48

    invoke-static {p2, v1, p0, p1, v2}, Lcom/android/systemui/people/ui/compose/PeopleScreenKt;->access$PeopleScreenWithConversations(Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
