.class public final Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _longerDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shorterDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final clockInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeHeaderClockInteractor;

.field public final isDisabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLocationIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isMicCameraIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPrivacyChipEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isPrivacyChipVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isSingleCarrier:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final longerDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final longerDateText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final longerPattern:Ljava/lang/String;

.field public final mobileIconsViewModel:Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;

.field public final mobileSubIds:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final privacyChipInteractor:Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;

.field public final privacyItems:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final shorterDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final shorterDateText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shorterPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractor;Lcom/android/systemui/statusbar/pipeline/mobile/ui/viewmodel/MobileIconsViewModel;Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeHeaderClockInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    check-cast p6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;

    iget-object p3, p6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->isSingleCarrier:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$special$$inlined$map$1;

    iget-object p4, p6, Lcom/android/systemui/statusbar/pipeline/mobile/domain/interactor/MobileIconsInteractorImpl;->filteredSubscriptions:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p3, p4}, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p6, 0x3

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p7

    sget-object p9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p3, p1, p7, p9}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p8, Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;->privacyItems:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p8, Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;->isMicCameraIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p8, Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;->isLocationIndicationEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p8, Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;->isChipVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p8, Lcom/android/systemui/shade/domain/interactor/PrivacyChipInteractor;->isChipEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p3, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isQsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$special$$inlined$map$2;

    invoke-direct {p5, p3}, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p4, p6}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const p3, 0x7f130007

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->longerPattern:Ljava/lang/String;

    const p4, 0x7f130006

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->shorterPattern:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p3

    sget-object p4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p3, p4}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    invoke-static {p3}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->longerDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->shorterDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string p2, ""

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->_shorterDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->_longerDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.TIME_TICK"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    sget-object p4, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$2;->INSTANCE:Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$2;

    const/16 p5, 0xc

    invoke-static {p10, p2, p3, p4, p5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$3;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$3;-><init>(Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p5, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance p2, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$4;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel$4;-><init>(Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p4, p4, p2, p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$updateDateTexts(Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->shorterDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v1, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->longerDateFormat:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->longerPattern:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p1, v3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    invoke-virtual {v1, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v4, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->shorterPattern:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    invoke-virtual {v0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    invoke-virtual {v1, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->_longerDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/shade/ui/viewmodel/ShadeHeaderViewModel;->_shorterDateText:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
