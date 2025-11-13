.class public final Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

.field public final configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

.field public final desktopManager:Lcom/android/systemui/util/DesktopManager;

.field public final firstMobileSubShowingNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final firstMobileSubViewModel:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

.field public final logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

.field public final reuseCache:Ljava/util/Map;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final subscriptionIdsFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final verboseLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->logger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileViewLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->verboseLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    iput-object p6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    iput-object p9, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->configuration:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->reuseCache:Ljava/util/Map;

    check-cast p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$subscriptionIdsFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$subscriptionIdsFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p3, p3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->filteredSubscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p5

    sget-object p6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1, p7, p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->subscriptionIdsFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$map$1;

    invoke-direct {p5, p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;)V

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    invoke-static {p5, p7, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance p5, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$flatMapLatest$1;

    invoke-direct {p5, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p7, p3, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->firstMobileSubShowingNetworkTypeIcon:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel$1;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p7, p2, p2, p1, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static synthetic getReuseCache$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final commonViewModelForSub(ILjava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->reuseCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    new-instance v4, Lkotlinx/coroutines/JobImpl;

    invoke-direct {v4, v2}, Lkotlinx/coroutines/JobImpl;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v2

    new-instance v12, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

    check-cast v3, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->getMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->flags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iget-object v10, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->desktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->airplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    iget-object v7, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->constants:Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;

    move-object v3, v12

    move v4, p1

    move-object v9, v2

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModel;-><init>(ILcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityConstants;Lcom/android/systemui/flags/FeatureFlagsClassic;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v12, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p0

    :cond_0
    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;

    return-object p0
.end method

.method public final viewModelForSub(ILcom/android/systemui/statusbar/phone/StatusBarLocation;Ljava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;
    .locals 2

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->commonViewModelForSub(ILjava/lang/String;)Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;

    move-result-object p3

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel;->Companion:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel$Companion;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->interactor:Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->getMobileConnectionInteractorForSubId(I)Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/LocationBasedMobileViewModel$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "invalid location for MobileViewModel: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/ShadeCarrierGroupMobileIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p2, p3, p1, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/ShadeCarrierGroupMobileIconViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconInteractor;Lkotlinx/coroutines/CoroutineScope;)V

    goto :goto_0

    :pswitch_2
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/SubScreenQsMobileIconViewModel;

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/SubScreenQsMobileIconViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/QsMobileIconViewModel;

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/QsMobileIconViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/KeyguardMobileIconViewModel;

    invoke-direct {p2, p3}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/KeyguardMobileIconViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;)V

    goto :goto_0

    :pswitch_5
    new-instance p2, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/HomeMobileIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;->verboseLogger:Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;

    invoke-direct {p2, p3, p0}, Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/HomeMobileIconViewModel;-><init>(Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconViewModelCommon;Lcom/android/systemui/statusbar/pipeline/mobile/ui/VerboseMobileViewLogger;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
