.class public final Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clearResult:Lkotlin/jvm/functions/Function0;

.field public final onTileClicked:Lkotlin/jvm/functions/Function1;

.field public final onTileRefreshRequested:Lkotlin/jvm/functions/Function0;

.field public final onUserJourneyCancelled:Lkotlin/jvm/functions/Function0;

.field public final onWidgetIdChanged:Lkotlin/jvm/functions/Function1;

.field public final priorityTiles:Lkotlinx/coroutines/flow/StateFlow;

.field public final recentTiles:Lkotlinx/coroutines/flow/StateFlow;

.field public final result:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlinx/coroutines/flow/StateFlow;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->priorityTiles:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p2, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->recentTiles:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p4, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->result:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p5, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onTileRefreshRequested:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onWidgetIdChanged:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->clearResult:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onTileClicked:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->onUserJourneyCancelled:Lkotlin/jvm/functions/Function0;

    return-void
.end method
