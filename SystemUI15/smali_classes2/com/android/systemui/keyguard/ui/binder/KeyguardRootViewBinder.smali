.class public final Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;

.field public static final aodNotificationIconContainerId:I

.field public static final burnInLayerId:I

.field public static final deviceEntryIcon:I

.field public static final endButton:I

.field public static final indicationArea:I

.field public static final largeClockId:I

.field public static final lockIcon:I

.field public static final nsslPlaceholderId:I

.field public static final startButton:I

.field public static final statusViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;-><init>()V

    const v0, 0x7f0a05ca

    sput v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->statusViewId:I

    const v0, 0x7f0a082d

    sput v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->nsslPlaceholderId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/util/kotlin/DisposableHandles;
    .locals 19

    move-object/from16 v14, p0

    new-instance v13, Lcom/android/systemui/util/kotlin/DisposableHandles;

    invoke-direct {v13}, Lcom/android/systemui/util/kotlin/DisposableHandles;-><init>()V

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    new-instance v6, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/viewmodel/BurnInParameters;-><init>(IILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v11

    move-object v15, v11

    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;

    move-object v8, v0

    new-instance v1, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$viewState$1;

    invoke-direct {v1, v14}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$viewState$1;-><init>(Landroid/view/ViewGroup;)V

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v10, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;

    move-object v0, v10

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p1

    move-object v9, v12

    move-object/from16 v17, v10

    move-object/from16 v10, p3

    move-object/from16 p10, v11

    move-object/from16 v11, p6

    move-object/from16 p11, v12

    move-object/from16 v12, p8

    move-object/from16 v18, v13

    move-object/from16 v13, p13

    move-object/from16 v14, p7

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$2;-><init>(Landroid/view/ViewGroup;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/ViewStateAccessor;Ljava/util/Map;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-static {v1, v0, v2}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-object/from16 p6, p9

    move-object/from16 p7, p11

    move-object/from16 p8, p10

    invoke-direct/range {p3 .. p8}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$OnLayoutChange;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Ljava/util/Map;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v3, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/common/ui/view/ViewExtKt$onLayoutChanged$2;-><init>(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$4;

    move-object/from16 v3, p11

    invoke-direct {v0, v3}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$5;

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$5;-><init>(Landroid/view/ViewGroup;Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$6;

    move-object/from16 v3, p10

    invoke-direct {v0, v3}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder$bind$6;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v0, Lcom/android/systemui/common/ui/view/ViewExtKt$onApplyWindowInsets$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/common/ui/view/ViewExtKt$onApplyWindowInsets$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    return-object v2
.end method
