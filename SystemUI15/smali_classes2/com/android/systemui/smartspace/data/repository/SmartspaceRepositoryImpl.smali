.class public final Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/smartspace/data/repository/SmartspaceRepository;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;


# instance fields
.field public final _communalSmartspaceTargets:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final communalSmartspaceController:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

.field public final communalSmartspaceTargets:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->communalSmartspaceController:Lcom/android/systemui/communal/smartspace/CommunalSmartspaceController;

    iput-object p2, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->uiExecutor:Ljava/util/concurrent/Executor;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->_communalSmartspaceTargets:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$1;-><init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v1, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl$communalSmartspaceTargets$2;-><init>(Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    invoke-direct {p2, v1, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p2, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->communalSmartspaceTargets:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 4

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/smartspace/data/repository/SmartspaceRepositoryImpl;->_communalSmartspaceTargets:Lkotlinx/coroutines/flow/StateFlowImpl;

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/app/smartspace/SmartspaceTarget;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
