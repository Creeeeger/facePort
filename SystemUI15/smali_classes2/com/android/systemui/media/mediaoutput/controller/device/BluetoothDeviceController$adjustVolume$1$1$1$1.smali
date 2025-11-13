.class final Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;
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
.field final synthetic $manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->$manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->$manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v5, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->label:I

    const-wide/16 v6, 0x12c

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->$manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput v4, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->label:I

    sget-object v4, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;

    invoke-virtual {p1, v1, v5, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->updateDevices(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    iput v3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->label:I

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->$manager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->label:I

    sget-object v2, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$Companion;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->updateDevices(Ljava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController$adjustVolume$1$1$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BluetoothDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
