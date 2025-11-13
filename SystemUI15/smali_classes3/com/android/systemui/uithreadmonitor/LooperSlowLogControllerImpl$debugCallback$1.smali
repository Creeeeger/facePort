.class public final synthetic Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;->$tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$debugCallback$1;->$tmp0:Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;

    iget-object p1, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->curLogHandler:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "LooperSlow"

    invoke-static {p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl$updateSlowDispatchOnChoreographer$2;-><init>(Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;JLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iget-object p2, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/uithreadmonitor/LooperSlowLogControllerImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v1, 0x0

    invoke-static {p2, p0, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
