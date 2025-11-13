.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;
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
.field final synthetic $previewContext$inlined:Landroid/content/Context;

.field final synthetic $smartspace$inlined:Landroid/view/View;

.field final synthetic $spanName:Ljava/lang/String;

.field final synthetic $splitShadePreview$inlined:Z

.field final synthetic $viewModel$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;ZLandroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$viewModel$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    iput-boolean p4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$splitShadePreview$inlined:Z

    iput-object p5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$previewContext$inlined:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$smartspace$inlined:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v7, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$viewModel$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    iget-boolean v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$splitShadePreview$inlined:Z

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$previewContext$inlined:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$smartspace$inlined:Landroid/view/View;

    move-object v0, v7

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;ZLandroid/content/Context;Landroid/view/View;)V

    iput-object p1, v7, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->label:I

    const-string v2, "Coroutines"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->I$0:I

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->Z$0:Z

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/app/tracing/coroutines/TraceData;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$spanName:Ljava/lang/String;

    sget-object v1, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/app/tracing/coroutines/TraceData;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v4

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "<none>"

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/android/app/tracing/coroutines/TraceData;->beginSpan(Ljava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eqz v4, :cond_6

    invoke-static {v5, v2, p1}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackBegin(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$viewModel$inlined:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    iget-object v7, v6, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;->selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;

    iget-boolean v9, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$splitShadePreview$inlined:Z

    iget-object v10, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$previewContext$inlined:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->$smartspace$inlined:Landroid/view/View;

    invoke-direct {v8, v6, v9, v10, v11}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$1$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;ZLandroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->L$1:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->Z$0:Z

    iput v5, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->I$0:I

    iput v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder$bind$1$1$invokeSuspend$$inlined$launch$default$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object p1, v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1, v8, p0}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    move-object p0, v1

    move v1, v4

    move v0, v5

    :goto_2
    :try_start_3
    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    move-object p1, p0

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_4
    move-object p0, v1

    move v1, v4

    move v0, v5

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_8

    invoke-static {v0, v2}, Lcom/android/app/tracing/TraceProxy_platformKt;->asyncTraceForTrackEnd(ILjava/lang/String;)V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/app/tracing/coroutines/TraceData;->endSpan()V

    :cond_9
    throw p1
.end method
