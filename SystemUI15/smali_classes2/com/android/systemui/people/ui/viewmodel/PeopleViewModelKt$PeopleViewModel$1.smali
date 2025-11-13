.class final synthetic Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $priorityTiles:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $recentTiles:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lcom/android/systemui/people/data/repository/PeopleTileRepository;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$priorityTiles:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$recentTiles:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p3, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;

    iput-object p4, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$context:Landroid/content/Context;

    const-string v4, "PeopleViewModel$onTileRefreshRequested(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "onTileRefreshRequested"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$priorityTiles:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$recentTiles:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;

    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;->$context:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->PeopleViewModel$priorityTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {v2, p0}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->PeopleViewModel$recentTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
