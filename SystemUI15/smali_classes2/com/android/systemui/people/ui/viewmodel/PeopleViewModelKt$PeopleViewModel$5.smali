.class final synthetic Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$5;
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
.field final synthetic $result:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$5;->$result:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v4, "PeopleViewModel$onUserJourneyCancelled(Lkotlinx/coroutines/flow/MutableStateFlow;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v3, "onUserJourneyCancelled"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModelKt$PeopleViewModel$5;->$result:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Cancelled;->INSTANCE:Lcom/android/systemui/people/ui/viewmodel/PeopleViewModel$Result$Cancelled;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
