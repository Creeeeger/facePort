.class public final Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cancelExecToken:Ljava/lang/Runnable;

.field public curVisibility:I

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final isExpandedChangedListeners:Ljava/util/List;

.field public final keyguardStateController$delegate:Lkotlin/Lazy;

.field public listener:Ljava/util/function/Consumer;

.field public needsExpand:Z

.field public panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

.field public panelState:I

.field public final panelStateChangedListeners:Ljava/util/List;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeExpansionStateManagerLazy:Ldagger/Lazy;

.field public final visibilityChangedListeners:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->shadeExpansionStateManagerLazy:Ldagger/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$keyguardStateController$2;

    invoke-direct {p1, p4}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$keyguardStateController$2;-><init>(Ldagger/Lazy;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->keyguardStateController$delegate:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isExpandedChangedListeners:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelStateChangedListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final cancelExecToken(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "KeyguardVisible"

    const-string v1, "cancel"

    invoke-static {p1, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->keyguardStateController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method public final isVisible()Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final panelLog(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_4

    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelExpansionChangeEvent:Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    :goto_3
    if-eqz p1, :cond_6

    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v1

    :goto_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    if-eq v0, p2, :cond_11

    :cond_7
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    const-string v0, "CLOSED"

    const-string v2, "OPENING"

    const-string v3, "OPEN"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_8
    move-object p0, v3

    goto :goto_5

    :cond_9
    move-object p0, v2

    goto :goto_5

    :cond_a
    move-object p0, v0

    :goto_5
    if-eqz p2, :cond_d

    if-eq p2, v5, :cond_c

    if-eq p2, v4, :cond_b

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_b
    move-object v0, v3

    goto :goto_6

    :cond_c
    move-object v0, v2

    :cond_d
    :goto_6
    if-eqz p1, :cond_e

    iget-boolean p2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->tracking:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_7

    :cond_e
    move-object p2, v1

    :goto_7
    if-eqz p1, :cond_f

    iget-boolean v2, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_8

    :cond_f
    move-object v2, v1

    :goto_8
    if-eqz p1, :cond_10

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_10
    const-string p1, "go panelState: "

    const-string v3, " -> "

    const-string v4, " tracking="

    invoke-static {p1, p0, v3, v0, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", expanded="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fraction="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardVisible"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method public final registerMonitor(Landroid/view/View;Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;)V
    .locals 1

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    instance-of p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowView;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    iput-object p2, p1, Lcom/android/systemui/shade/NotificationShadeWindowView;->mVisibilityChangedListener:Ljava/util/function/IntConsumer;

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->getKeyguardStateController()Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$2;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->shadeExpansionStateManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$1;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$3$2;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    iget-object p1, p1, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$4;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$4;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final start(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start needsExpand="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisible"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v0, 0x5dc

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    return-void
.end method

.method public final visibilityChanged(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "visibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVisible"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListeners:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/IntConsumer;

    invoke-interface {v1, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    return-void
.end method
