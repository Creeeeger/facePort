.class final Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;
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
.field final synthetic $durMs:J

.field final synthetic $type:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    iput-object p3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iput p4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    iget-wide v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    iget-object v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget v4, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;-><init>(JLcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->label:I

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

    iget-wide v3, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$durMs:J

    iput v2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget v0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    const-string v1, "expired type="

    invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->$r8$clinit:I

    iget-boolean p1, p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->debug:Z

    if-eqz p1, :cond_3

    const-string p1, "LooperSlow"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->this$0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$enable$1$3;->$type:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->disable(I)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
