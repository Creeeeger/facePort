.class final Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;
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
.field synthetic I$0:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;-><init>(Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;Lkotlin/coroutines/Continuation;)V

    iput p1, p2, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->I$0:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->I$0:I

    iget-object v1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->this$0:Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;

    iget-object v1, v1, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel;->inputMethodInteractor:Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;

    iput v2, p0, Lcom/android/systemui/bouncer/ui/viewmodel/PasswordBouncerViewModel$imeSwitcherRefreshingFlow$1$2;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/android/systemui/inputmethod/domain/interactor/InputMethodInteractor;->hasMultipleEnabledImesOrSubtypes(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
