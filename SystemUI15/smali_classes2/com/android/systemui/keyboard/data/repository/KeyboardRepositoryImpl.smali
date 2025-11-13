.class public final Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;


# instance fields
.field public final backlight:Lkotlinx/coroutines/flow/Flow;

.field public final inputManager:Landroid/hardware/input/InputManager;

.field public final isAnyKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

.field public final keyboardsChange:Lkotlinx/coroutines/flow/ReadonlySharedFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/input/InputManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->inputManager:Landroid/hardware/input/InputManager;

    sget-object p3, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$keyboardsChange$1;-><init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;)V

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    const/4 v2, 0x1

    invoke-static {v0, p1, p3, v2}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;

    invoke-direct {p3, v1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$newlyConnectedKeyboard$1;-><init>(Lkotlin/coroutines/Continuation;)V

    sget v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt;->$r8$clinit:I

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;

    invoke-direct {v0, p1, p3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flatMapConcat$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$$inlined$unsafeFlow$1;

    invoke-direct {p3, v0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$flattenConcat$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$mapNotNull$1;

    invoke-direct {v0, p3, p0}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    new-instance p3, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->isAnyKeyboardConnected:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$backlightStateListener$1;-><init>(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$3;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;->backlight:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final access$sendWithLogging(Lcom/android/systemui/keyboard/data/repository/KeyboardRepositoryImpl;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    const-string v0, "KeyboardRepositoryImpl"

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging$default(Lcom/android/systemui/common/coroutine/ChannelExt;Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
