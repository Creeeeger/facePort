.class public final Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function3;

.field public final synthetic $lifecycleCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic $lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $traceName:Ljava/lang/String;

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/lifecycle/ViewLifecycleOwner;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$traceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p5, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$block:Lkotlin/jvm/functions/Function3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 9

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onDestroy()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$traceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$view:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v3, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$block:Lkotlin/jvm/functions/Function3;

    sget-object p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    new-instance p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    invoke-direct {p0, v5}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onCreate()V

    invoke-virtual {p0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$lambda$1$$inlined$launch$1;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$createLifecycleOwnerAndRun$lambda$1$$inlined$launch$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;Lcom/android/systemui/lifecycle/ViewLifecycleOwner;Landroid/view/View;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v7, v6, v1, v8, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onDestroy()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$onAttachListener$1;->$lifecycleOwner:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
