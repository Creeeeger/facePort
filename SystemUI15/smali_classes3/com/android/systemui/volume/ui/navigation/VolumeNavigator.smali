.class public final Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

.field public final mainContext:Lkotlin/coroutines/CoroutineContext;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final viewModelFactory:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;

.field public final volumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

.field public final volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/volume/VolumePanelFactory;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->mainContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->volumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

    iput-object p4, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->viewModelFactory:Lcom/android/systemui/volume/panel/ui/viewmodel/VolumePanelViewModel$Factory;

    iput-object p6, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialogFactory;

    iput-object p7, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->volumePanelGlobalStateInteractor:Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;

    iget-object p2, p8, Lcom/android/systemui/volume/panel/domain/interactor/VolumePanelGlobalStateInteractor;->repository:Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;

    iget-object p2, p2, Lcom/android/systemui/volume/panel/data/repository/VolumePanelGlobalStateRepository;->globalState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$special$$inlined$flatMapLatest$1;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p0}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;)V

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final openVolumePanel(Lcom/android/systemui/volume/domain/model/VolumePanelRoute;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;->volumePanelFactory:Lcom/android/systemui/volume/VolumePanelFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/volume/VolumePanelFactory;->volumePanelDialog:Lcom/android/systemui/volume/VolumePanelDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/volume/VolumePanelDialog;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelFactory;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelFactory;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {p1, v0, p0, v1}, Lcom/android/systemui/volume/VolumePanelDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Z)V

    sput-object p1, Lcom/android/systemui/volume/VolumePanelFactory;->volumePanelDialog:Lcom/android/systemui/volume/VolumePanelDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.panel.action.VOLUME"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$1;-><init>(Lcom/android/systemui/volume/ui/navigation/VolumeNavigator;)V

    sget-object p0, Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$2;->INSTANCE:Lcom/android/systemui/volume/ui/navigation/VolumeNavigator$showNewVolumePanel$2;

    invoke-interface {v0, p1, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :goto_0
    return-void
.end method
