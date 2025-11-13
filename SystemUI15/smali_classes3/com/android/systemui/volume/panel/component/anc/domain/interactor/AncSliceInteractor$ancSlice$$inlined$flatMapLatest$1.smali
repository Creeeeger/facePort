.class public final Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $hideLabel$inlined:Z

.field final synthetic $isCollapsed$inlined:Z

.field final synthetic $width$inlined:I

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;IZZ)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    iput p3, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$width$inlined:I

    iput-boolean p4, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$isCollapsed$inlined:Z

    iput-boolean p5, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$hideLabel$inlined:Z

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    move-object v1, p3

    check-cast v1, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    iget v3, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$width$inlined:I

    iget-boolean v4, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$isCollapsed$inlined:Z

    iget-boolean v5, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$hideLabel$inlined:Z

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;IZZ)V

    iput-object p1, p3, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    instance-of v3, v1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    iget-object v3, v3, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;->ancSliceRepository:Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepository;

    check-cast v1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;

    iget-object v1, v1, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Bluetooth;->cachedBluetoothDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$width$inlined:I

    iget-boolean v6, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$isCollapsed$inlined:Z

    iget-boolean v7, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->$hideLabel$inlined:Z

    check-cast v3, Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getControlUriMetaData(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    move-object v1, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&version=2&is_collapsed="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "&hide_label="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v1, v4}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v3, Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;->sliceViewManager:Landroidx/slice/SliceViewManager;

    invoke-static {v4, v1}, Lcom/android/systemui/slice/SliceViewManagerExtKt;->sliceForUri(Landroidx/slice/SliceViewManager;Landroid/net/Uri;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v3, v3, Lcom/android/systemui/volume/panel/component/anc/data/repository/AncSliceRepositoryImpl;->mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$lambda$3$$inlined$filter$1;

    iget-object v4, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$lambda$3$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor;)V

    goto :goto_3

    :cond_5
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v4}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    :goto_3
    iput v2, p0, Lcom/android/systemui/volume/panel/component/anc/domain/interactor/AncSliceInteractor$ancSlice$$inlined$flatMapLatest$1;->label:I

    invoke-static {p0, v3, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
