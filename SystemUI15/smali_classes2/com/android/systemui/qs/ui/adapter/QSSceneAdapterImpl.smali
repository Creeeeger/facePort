.class public final Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSContainerController;
.implements Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final _customizingState:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final asyncLayoutInflaterFactory:Lkotlin/jvm/functions/Function1;

.field public final bottomNavBarSize:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

.field public final customizerAnimationDuration:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final customizerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final interestingChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field public final isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isCustomizing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final qsImplProvider:Ljavax/inject/Provider;

.field public final qsSceneComponentFactory:Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;

.field public final qsView:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final state:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;Ljavax/inject/Provider;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;",
            ")V"
        }
    .end annotation

    sget-object v8, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$1;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;-><init>(Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;Ljavax/inject/Provider;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;Ljavax/inject/Provider;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsSceneComponentFactory:Lcom/android/systemui/qs/dagger/QSSceneComponent$Factory;

    iput-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImplProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p7, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->configurationInteractor:Lcom/android/systemui/common/ui/domain/interactor/ConfigurationInteractor;

    iput-object p8, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->asyncLayoutInflaterFactory:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 p2, 0x0

    const/4 p5, 0x1

    invoke-static {p2, p5, p1, p5}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->bottomNavBarSize:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$CLOSED;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State$CLOSED;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object p1, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_customizingState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance p5, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$1;

    invoke-direct {p5, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p7, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p8, 0x3

    invoke-static {p7, p8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    iget-object v1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState;

    invoke-interface {v2}, Lcom/android/systemui/qs/ui/adapter/CustomizerState;->isCustomizing()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p5, p6, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$2;

    invoke-direct {p5, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p7, p8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v0

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState;

    invoke-interface {v2}, Lcom/android/systemui/qs/ui/adapter/CustomizerState;->isShowing()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p5, p6, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->isCustomizerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$3;

    invoke-direct {p5, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p7, p8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Animating;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Animating;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Animating;->getAnimationDuration()J

    move-result-wide v0

    long-to-int p2, v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5, p6, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_qsImpl:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$4;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p7, p8}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p5

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSImpl;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    invoke-static {p2, p6, p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const p2, -0x3ffffffc    # -2.000001f

    invoke-direct {p1, p2}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->interestingChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2;

    invoke-direct {p1, p0, p3, v2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl$2;-><init>(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p6, v2, v2, p1, p8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$applyState(Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;Lcom/android/systemui/qs/QSImpl;Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSImpl;->setQsVisible(Z)V

    invoke-interface {p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->getExpansion()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSImpl;->setExpanded(Z)V

    invoke-interface {p2}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapter$State;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Last state: "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_customizingState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomizerState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/QSImpl;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object p2, p2, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QQS height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->qsImpl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p2, "QS height: "

    invoke-static {p2, p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    return-void
.end method

.method public final setCustomizerAnimating(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_customizingState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Animating;

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState;

    instance-of v0, v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Showing;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/CustomizerState$Showing;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_2
    return-void
.end method

.method public final setCustomizerShowing(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->setCustomizerShowing(ZJ)V

    return-void
.end method

.method public final setCustomizerShowing(ZJ)V
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/ui/adapter/QSSceneAdapterImpl;->_customizingState:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    cmp-long v2, p2, v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;

    invoke-direct {v2, p2, p3}, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingIntoCustomizer;-><init>(J)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Showing;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/CustomizerState$Showing;

    goto :goto_0

    :cond_2
    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    new-instance v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingOutOfCustomizer;

    invoke-direct {v2, p2, p3}, Lcom/android/systemui/qs/ui/adapter/CustomizerState$AnimatingOutOfCustomizer;-><init>(J)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;->INSTANCE:Lcom/android/systemui/qs/ui/adapter/CustomizerState$Hidden;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final setDetailShowing(Z)V
    .locals 0

    return-void
.end method
