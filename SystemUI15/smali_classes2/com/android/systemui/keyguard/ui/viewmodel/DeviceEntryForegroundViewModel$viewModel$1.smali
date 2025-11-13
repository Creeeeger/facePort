.class final Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;
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
.field synthetic I$0:I

.field synthetic I$1:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

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

    check-cast p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;

    invoke-direct {p4, p5}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->L$0:Ljava/lang/Object;

    iput-boolean p0, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->Z$0:Z

    iput p2, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->I$0:I

    iput p3, p4, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->I$1:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->Z$0:Z

    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->I$0:I

    iget p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$viewModel$1;->I$1:I

    new-instance v2, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/DeviceEntryForegroundViewModel$ForegroundIconViewModel;-><init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$IconType;ZII)V

    return-object v2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
