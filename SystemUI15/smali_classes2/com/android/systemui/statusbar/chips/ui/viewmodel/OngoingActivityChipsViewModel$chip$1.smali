.class final Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    check-cast p2, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    check-cast p3, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    check-cast p4, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;

    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$3:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    iget-object v0, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel;

    instance-of v2, p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, v0, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    if-eqz p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    instance-of p1, v1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    if-eqz p1, :cond_2

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
