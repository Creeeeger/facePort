.class final Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
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

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$view:Landroid/view/ViewGroup;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$childViews:Ljava/util/Map;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x3

    move-object/from16 v2, p16

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    move-object/from16 v2, p2

    check-cast v2, Landroid/view/View;

    move-object/from16 v18, p3

    check-cast v18, Lkotlin/coroutines/Continuation;

    new-instance v15, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;

    move-object v2, v15

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$view:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    iget-object v8, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v9, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v10, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    iget-object v11, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$childViews:Ljava/util/Map;

    iget-object v12, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    iget-object v13, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v14, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 p1, v15

    iget-object v15, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v19, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v18}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->L$0:Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    move-object v9, v2

    sget-object v15, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v14, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;

    move-object v4, v14

    iget-object v5, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$view:Landroid/view/ViewGroup;

    iget-object v6, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v7, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$deviceEntryHapticsInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;

    iget-object v8, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$vibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v10, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    iget-object v11, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v12, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v13, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$viewState:Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$childViews:Ljava/util/Map;

    move-object/from16 v22, v1

    move-object v1, v14

    move-object v14, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    move-object/from16 v23, v15

    move-object v15, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$clockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->$burnInParams:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v20, v3

    const/16 v21, 0x0

    invoke-direct/range {v4 .. v21}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2$1;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;->label:I

    move-object/from16 v3, v23

    invoke-static {v2, v3, v1, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
