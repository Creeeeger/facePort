.class public final Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callback:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;

.field public currentMediaController:Landroid/media/session/MediaController;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->callback:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;

    const-string p0, "RemoteDeviceController"

    const-string p1, "init()"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final access$updateMediaController(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;

    iget v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_6

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-string v7, "MediaController("

    const-string v8, ") size = "

    const-string v9, "RemoteDeviceController"

    invoke-static {v6, v7, p1, v8, v9}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v7

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\t"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v6

    if-ne v6, v4, :cond_7

    goto :goto_3

    :cond_8
    move-object v5, v2

    :goto_3
    check-cast v5, Landroid/media/session/MediaController;

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v6, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->callback:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;

    if-nez v5, :cond_b

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v6}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_9
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput v3, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->label:I

    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_8

    :cond_a
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_b
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v7

    goto :goto_5

    :cond_c
    move-object v7, v2

    :goto_5
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    iput-object v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5, v6}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    sget-object v5, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice$Companion;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;

    new-instance v6, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    const v7, 0x7f1304a4

    invoke-direct {v6, v7, v2, v4, v2}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    invoke-virtual {v3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v3

    invoke-direct {v5, p0, v6, v2, v3}, Lcom/android/systemui/media/mediaoutput/entity/RemoteDevice;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;II)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_e
    if-nez v2, :cond_f

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_6

    :cond_f
    move-object p0, v2

    :goto_6
    iput-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$updateMediaController$1;->label:I

    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_10

    goto :goto_8

    :cond_10
    :goto_7
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_8
    return-object v1
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string v0, "RemoteDeviceController"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->currentMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->callback:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    const-string v1, "packageName changed : "

    const-string v2, " -> "

    const-string v3, "RemoteDeviceController"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$packageName$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$packageName$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, v0, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
