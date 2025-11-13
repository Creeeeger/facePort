.class final Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $emitAfterTimeout:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $it:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field final synthetic $timeoutMillis:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$it:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$timeoutMillis:J

    iput-object p4, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$emitAfterTimeout:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;

    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$it:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$timeoutMillis:J

    iget-object v4, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$emitAfterTimeout:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;-><init>(Ljava/lang/Object;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$it:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$timeoutMillis:J

    iput-object v1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->$emitAfterTimeout:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/keyboard/backlight/ui/viewmodel/BacklightDialogViewModel$timeout$1$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
