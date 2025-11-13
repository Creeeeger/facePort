.class public final Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final context:Landroid/content/Context;

.field public final tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;

.field public final widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/people/data/repository/PeopleTileRepository;Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;

    iput-object p3, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 18

    move-object/from16 v0, p0

    const-class v1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->context:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->tileRepository:Lcom/android/systemui/people/data/repository/PeopleTileRepository;

    invoke-static {v2, v1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->PeopleViewModel$priorityTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt;->PeopleViewModel$recentTiles(Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v6

    new-instance v17, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v8

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v10

    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;

    invoke-direct {v12, v3, v4, v2, v1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$1;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleTileRepository;Landroid/content/Context;)V

    new-instance v13, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$2;

    invoke-direct {v13, v5}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$2;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    new-instance v14, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$3;

    invoke-direct {v14, v6}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$3;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    new-instance v15, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;

    iget-object v0, v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Factory;->widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;

    invoke-direct {v15, v5, v0, v6}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    new-instance v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$5;

    invoke-direct {v0, v6}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$5;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    move-object/from16 v7, v17

    move-object/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-object v17

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
