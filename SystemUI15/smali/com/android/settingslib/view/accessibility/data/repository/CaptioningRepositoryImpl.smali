.class public final Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepository;


# instance fields
.field public final backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final captioningChanges:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final captioningManager:Landroid/view/accessibility/CaptioningManager;

.field public final isSystemAudioCaptioningEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSystemAudioCaptioningUiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->captioningManager:Landroid/view/accessibility/CaptioningManager;

    iput-object p2, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$captioningChanges$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$captioningChanges$1;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p2

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, p3, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p2

    const-class v3, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemAudioCaptioningEnabled;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    invoke-direct {v4, p2, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/reflect/KClass;)V

    new-instance v3, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v3, v4}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v4, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$isSystemAudioCaptioningEnabled$2;

    invoke-direct {v4, p0, v0}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$isSystemAudioCaptioningEnabled$2;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v5, v4, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5, p3, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->isSystemAudioCaptioningEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-class v3, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$CaptioningChange$IsSystemUICaptioningEnabled;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v3

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    invoke-direct {v4, p2, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/reflect/KClass;)V

    new-instance p2, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p2, v4}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$isSystemAudioCaptioningUiEnabled$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$isSystemAudioCaptioningUiEnabled$2;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, v3, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isSystemAudioCaptioningUiEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->isSystemAudioCaptioningUiEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final setIsSystemAudioCaptioningEnabled(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$setIsSystemAudioCaptioningEnabled$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl$setIsSystemAudioCaptioningEnabled$2;-><init>(Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;ZLkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/settingslib/view/accessibility/data/repository/CaptioningRepositoryImpl;->backgroundCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
