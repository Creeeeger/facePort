.class final synthetic Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $appWidgetId:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $result:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$appWidgetId:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;

    iput-object p3, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$result:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v4, "PeopleViewModel$onTileClicked(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "onTileClicked"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;

    iget-object v0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$appWidgetId:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$widgetRepository:Lcom/android/systemui/people/data/repository/PeopleWidgetRepository;

    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$4;->$result:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    check-cast v1, Lcom/android/systemui/people/data/repository/PeopleWidgetRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/people/data/repository/PeopleWidgetRepositoryImpl;->peopleSpaceWidgetManager:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget-object p1, p1, Lcom/android/systemui/people/ui/viewmodel/PeopleTileViewModel;->key:Lcom/android/systemui/people/widget/PeopleTileKey;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->addNewWidget(ILcom/android/systemui/people/widget/PeopleTileKey;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "appWidgetId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;

    invoke-direct {v0, p1}, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Success;-><init>(Landroid/content/Intent;)V

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
