.class public abstract Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    sget-object v1, Lcom/android/app/tracing/coroutines/TraceContextElementKt;->traceThreadLocal:Lcom/android/app/tracing/coroutines/TraceDataThreadLocal;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method public static final repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
    .locals 12

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object v0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;

    const-string v8, "repeatWhenAttached"

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v9, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    invoke-direct {v9, p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;-><init>(Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onCreate()V

    invoke-virtual {v9}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$lambda$1$$inlined$launch$1;

    const/4 v3, 0x0

    move-object v1, v11

    move-object v2, v8

    move-object v4, p2

    move-object v5, v9

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$lambda$1$$inlined$launch$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/lifecycle/ViewLifecycleOwner;Landroid/view/View;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-static {v10, p1, v1, v11, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object v9, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    new-instance p1, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    invoke-direct {p1, v0, p0, v7}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;)V

    return-object p1
.end method

.method public static synthetic repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p0, v0, p1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object p0

    return-object p0
.end method
