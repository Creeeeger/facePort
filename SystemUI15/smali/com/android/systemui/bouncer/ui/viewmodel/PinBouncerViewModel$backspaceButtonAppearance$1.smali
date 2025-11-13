.class final Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;

    iget-boolean v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->Z$0:Z

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel$backspaceButtonAppearance$1;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PinBouncerViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/systemui/bouncer/ui/viewmodel/PinInputViewModel;->input:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/EntryToken$ClearAll;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;->Hidden:Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;->Subtle:Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;->Shown:Lcom/android/systemui/bouncer/ui/viewmodel/ActionButtonAppearance;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
