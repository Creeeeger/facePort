.class public final Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $onResult:Lkotlin/jvm/functions/Function1;

.field public final synthetic $viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1$1;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iput-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1$1;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1$1;->$viewModel:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;

    iget-object p2, p2, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel;->clearResult:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/people/ui/compose/PeopleScreenKt$PeopleScreen$1$1;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
