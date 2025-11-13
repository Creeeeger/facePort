.class final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;
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
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    invoke-direct {v4, v1, v5, p1, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.smartmirroring"

    const-string v7, "com.samsung.android.smartmirroring.SmartMirroringService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iget-object v5, v5, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->context:Landroid/content/Context;

    iget-object v6, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    check-cast v6, Landroid/content/ServiceConnection;

    :goto_0
    invoke-virtual {v5, v4, v6, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    invoke-direct {v4, v1, v5, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
