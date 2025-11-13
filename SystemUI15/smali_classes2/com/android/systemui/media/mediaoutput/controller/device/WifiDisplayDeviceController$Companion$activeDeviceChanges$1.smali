.class final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;
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
.field final synthetic $this_activeDeviceChanges:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/content/Context;",
            "+",
            "Landroid/media/AudioManager;",
            ">;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->$this_activeDeviceChanges:Lkotlin/Pair;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;)Lkotlinx/coroutines/Job;
    .locals 3

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$updateDevices$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$updateDevices$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    invoke-static {p1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->invokeSuspend$updateDevices(Lkotlinx/coroutines/channels/ProducerScope;)Lkotlinx/coroutines/Job;

    iget-object v4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;

    iget-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->$this_activeDeviceChanges:Lkotlin/Pair;

    invoke-direct {v4, v5, v3, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$2;-><init>(Lkotlin/Pair;Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$receiver$1;Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1$callback$1;)V

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$Companion$activeDeviceChanges$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
