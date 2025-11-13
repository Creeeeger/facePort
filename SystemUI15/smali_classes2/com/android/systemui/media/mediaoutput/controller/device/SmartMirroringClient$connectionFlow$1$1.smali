.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $connection:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/content/ServiceConnection;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "SmartMirroringClient"

    const-string v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$connection:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    sget p2, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ServiceConnection;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->service:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1$onServiceConnected$3;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1$onServiceConnected$3;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 p2, 0x3

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "SmartMirroringClient"

    const-string v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$isDestroyed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->service:Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1$onServiceDisconnected$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$connectionFlow$1$1$onServiceDisconnected$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {p0, v0, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
