.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow;"
        }
    .end annotation
.end field

.field final synthetic $childViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

.field final synthetic $clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

.field final synthetic $configuration:Lcom/android/systemui/common/ui/ConfigurationState;

.field final synthetic $deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

.field final synthetic $interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field final synthetic $keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic $occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

.field final synthetic $screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field final synthetic $shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field final synthetic $vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

.field final synthetic $viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;",
            "Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;",
            "Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/systemui/common/ui/ConfigurationState;",
            "Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lkotlinx/coroutines/flow/MutableStateFlow;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$view:Landroid/view/ViewGroup;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$childViews:Ljava/util/Map;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x2

    move-object/from16 v2, p17

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p2

    new-instance v15, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;

    move-object v1, v15

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$view:Landroid/view/ViewGroup;

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    iget-object v8, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v10, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    iget-object v11, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$childViews:Ljava/util/Map;

    iget-object v12, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    iget-object v13, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v14, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 p2, v15

    iget-object v15, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v19, p2

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v17, v0

    move-object/from16 v1, p2

    invoke-direct/range {v1 .. v18}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->L$0:Ljava/lang/Object;

    return-object v1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lcom/android/systemui/Flags;->composeLockscreen()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->deviceEntryUdfpsRefactor()V

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$3;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$view:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$childViews:Ljava/util/Map;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$3;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Landroid/view/ViewGroup;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, v6, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v2, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$13;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$view:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$13;-><init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$14;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    invoke-direct {v2, v3, p0, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1$14;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
