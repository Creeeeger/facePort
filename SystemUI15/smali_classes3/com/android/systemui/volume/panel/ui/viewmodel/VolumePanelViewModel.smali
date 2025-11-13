.class public final Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final componentsLayout:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final volumePanelComponent:Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

.field public final volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

.field public final volumePanelState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    invoke-interface {p3, p0, p2}, Lcom/android/systemui/volume/panel/dagger/factory/VolumePanelComponentFactory;->create(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Lkotlinx/coroutines/CoroutineScope;)Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelComponent:Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

    invoke-static {p4}, Lcom/android/systemui/statusbar/policy/ConfigurationControllerExtKt;->getOnConfigChanged(Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$volumePanelState$1;

    const/4 p6, 0x0

    invoke-direct {p4, p1, p6}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$volumePanelState$1;-><init>(Landroid/content/res/Resources;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, p4, p3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$special$$inlined$map$1;

    invoke-direct {p3, v0, p1}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/content/res/Resources;)V

    invoke-interface {p2}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->coroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p4

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v1, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const v3, 0x7f050095

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelState;-><init>(IZ)V

    invoke-static {p3, p4, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {p2}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->componentsInteractor()Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractor;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;

    iget-object p3, p3, Lcom/android/systemui/volume/panel/domain/interactor/ComponentsInteractorImpl;->components:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    new-instance p4, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;

    invoke-direct {p4, p0, p6}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$componentsLayout$1;-><init>(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, p3, p1, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p2}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->coroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {v1, p1, v0, p3}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->componentsLayout:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-interface {p2}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->volumePanelStartables()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;

    invoke-virtual {p2}, Lcom/android/systemui/volume/domain/startable/AudioModeLoggerStartable;->start()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string p1, "com.android.systemui.action.DISMISS_VOLUME_PANEL_DIALOG"

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$2;

    invoke-direct {p2, p0, p6}, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$2;-><init>(Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object p0, p0, Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel;->volumePanelComponent:Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;

    invoke-interface {p0}, Lcom/android/systemui/volume/panel/dagger/VolumePanelComponent;->coroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p3, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method
