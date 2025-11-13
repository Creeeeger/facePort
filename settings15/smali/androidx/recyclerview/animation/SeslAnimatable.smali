.class public abstract Landroidx/recyclerview/animation/SeslAnimatable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public animator:Landroid/animation/ValueAnimator;

.field public final defaultAnimationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

.field public final initialValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$SimpleAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/animation/SeslAnimatable;->initialValue:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/animation/SeslAnimatable;->defaultAnimationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

    return-void
.end method


# virtual methods
.method public abstract animateTo(Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/animation/SeslAnimatable;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/animation/SeslAnimatable;->animator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/animation/SeslAnimatable;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/recyclerview/animation/SeslAnimatable;->initialValue:Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public final tryAnimateTo(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    iget-object v1, p0, Landroidx/recyclerview/animation/SeslAnimatable;->defaultAnimationSpec:Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;

    const-string v2, "animationSpec"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dispatcher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v2, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Landroidx/recyclerview/animation/SeslAnimatable$tryAnimateTo$1;-><init>(Landroidx/recyclerview/animation/SeslAnimatable;Ljava/lang/Object;Landroidx/recyclerview/animation/SeslAnimatable$AnimationSpec;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
