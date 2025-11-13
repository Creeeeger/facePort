.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final appsStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final listModelFilteredFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final matchAnyUserForAdmin:Z

.field public final recordListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final showInstantApps:Z

.field public final systemFilteredFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

.field public final userId:I

.field public final userIdFlow:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;IZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    move/from16 v2, p2

    iput v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->userId:I

    move/from16 v3, p3

    iput-boolean v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->showInstantApps:Z

    move/from16 v3, p4

    iput-boolean v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->matchAnyUserForAdmin:Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->userIdFlow:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->appsStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v4, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->listModel:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    iget-object v4, v4, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->flow:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    new-instance v5, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$special$$inlined$flatMapLatest$1;

    invoke-direct {v5, v2, v0}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;)V

    invoke-static {v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    iget-object v6, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->scope:Lkotlinx/coroutines/internal/ContextScope;

    const/4 v7, 0x1

    invoke-static {v4, v6, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->recordListFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v8, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->showSystem:Lcom/android/settingslib/spa/framework/util/StateFlowBridge;

    iget-object v8, v8, Lcom/android/settingslib/spa/framework/util/StateFlowBridge;->flow:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    iget-object v9, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->appListRepository:Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;

    move-object v12, v9

    check-cast v12, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "showSystemFlow"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$1;

    const-string v15, "showSystemPredicate(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/16 v16, 0x0

    const/4 v11, 0x3

    const-class v13, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    const-string v14, "showSystemPredicate"

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v3, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v3

    new-instance v8, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$systemFilteredFlow$1;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4, v8}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    move-result-object v3

    invoke-static {v3, v6, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->systemFilteredFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    iget-object v3, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;->optionFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    move-result-object v3

    new-instance v4, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$special$$inlined$flatMapLatest$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph$special$$inlined$flatMapLatest$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    invoke-static {v1, v6, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;->listModelFilteredFlow:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method
