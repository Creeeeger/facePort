.class final Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;
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
.field final synthetic $totalDuration:J

.field label:I

.field final synthetic this$0:Lcom/android/systemui/power/ChargerNowBarView;


# direct methods
.method public constructor <init>(JLcom/android/systemui/power/ChargerNowBarView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/systemui/power/ChargerNowBarView;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->$totalDuration:J

    iput-object p3, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;

    iget-wide v0, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->$totalDuration:J

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;-><init>(JLcom/android/systemui/power/ChargerNowBarView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->label:I

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

    iget-wide v3, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->$totalDuration:J

    iput v2, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const-string p1, "PowerUI.ChargerNowBarView"

    const-string v0, "addOnChargerAnimationEndHandler, call onChargerAnimationEnd()"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView$addOnChargerAnimationEndHandler$1;->this$0:Lcom/android/systemui/power/ChargerNowBarView;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerNowBarView;->animationListener:Lcom/android/systemui/power/ChargerAnimationListener;

    if-eqz p0, :cond_3

    check-cast p0, Lcom/android/systemui/power/SecPowerUI;

    const-string p1, "PowerUI"

    const-string v0, "onChargerAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
