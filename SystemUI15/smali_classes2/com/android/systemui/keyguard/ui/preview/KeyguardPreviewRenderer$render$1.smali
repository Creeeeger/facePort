.class public final Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v2, v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->display:Landroid/view/Display;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->context:Landroid/content/Context;

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;

    const/4 v14, 0x0

    invoke-direct {v15, v3, v14}, Lcom/android/systemui/keyguard/ui/view/KeyguardRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v5, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardRootViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;

    iget-object v6, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardBlueprintViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;

    iget-object v7, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->configuration:Lcom/android/systemui/common/ui/ConfigurationState;

    iget-object v8, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->occludingAppDeviceEntryMessageViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;

    iget-object v9, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->chipbarCoordinator:Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;

    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v11, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iget-object v12, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardClockInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;

    iget-object v13, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->keyguardClockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v4, v15

    move-object v0, v14

    move-object/from16 v14, v18

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    invoke-static/range {v4 .. v17}, Lcom/android/systemui/keyguard/ui/binder/KeyguardRootViewBinder;->bind(Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardRootViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBlueprintViewModel;Lcom/android/systemui/common/ui/ConfigurationState;Lcom/android/systemui/keyguard/ui/viewmodel/OccludingAppDeviceEntryMessageViewModel;Lcom/android/systemui/temporarydisplay/chipbar/ChipbarCoordinator;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardClockViewModel;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryHapticsInteractor;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/util/kotlin/DisposableHandles;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->disposables:Lcom/android/systemui/util/kotlin/DisposableHandles;

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->udfpsOverlayInteractor:Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;

    iget-object v4, v4, Lcom/android/systemui/biometrics/domain/interactor/UdfpsOverlayInteractor;->udfpsOverlayParams:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;

    iget-object v4, v4, Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v9, 0x7f0d0541

    invoke-virtual {v7, v9, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v1, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-boolean v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHideClock:Z

    const/4 v7, -0x2

    const/4 v9, 0x4

    if-nez v4, :cond_b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_2

    const/4 v14, 0x0

    :cond_2
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_3

    const/4 v14, 0x0

    :cond_3
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const v11, 0x7f071418

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-direct {v10, v7, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {v3}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v11

    const v12, 0x7f071419

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v12, v11

    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_4

    const/4 v14, 0x0

    :cond_4
    invoke-virtual {v14, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_5

    const/4 v14, 0x0

    :cond_5
    const v10, 0x7f070204

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v14, v4, v8, v8, v8}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_6

    const/4 v14, 0x0

    :cond_6
    invoke-virtual {v14, v8}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :cond_7
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_8

    const/4 v14, 0x0

    :cond_8
    invoke-virtual {v14, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$clockChangeListener$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$clockChangeListener$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V

    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    iget-object v11, v10, Lcom/android/systemui/shared/clocks/ClockRegistry;->assert:Lcom/android/systemui/util/ThreadAssert;

    invoke-virtual {v11}, Lcom/android/systemui/util/ThreadAssert;->isMainThread()V

    iget-object v10, v10, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$1;

    invoke-direct {v10, v2, v4}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$clockChangeListener$1;)V

    invoke-virtual {v5, v10}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockController:Lcom/android/keyguard/ClockEventController;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/ClockEventController;->registerListeners(Landroid/view/View;)V

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$2;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$2;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V

    invoke-virtual {v5, v4}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;)V

    const-string v10, "android.intent.action.TIME_TICK"

    const-string v11, "android.intent.action.TIME_SET"

    invoke-static {v10, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v12

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v14, 0x0

    const/16 v17, 0x3c

    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v4

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    new-instance v10, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;

    invoke-direct {v10, v2, v4}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$4;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$receiver$1;)V

    invoke-virtual {v5, v10}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$layoutChangeListener$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v10, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$5;

    invoke-direct {v10, v1, v4}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$setUpClock$5;-><init>(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v5, v10}, Lcom/android/systemui/util/kotlin/DisposableHandles;->plusAssign(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    new-instance v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$onClockChanged$1;-><init>(Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    iget-object v11, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v11, v5, v5, v4, v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->largeClockHostView:Landroid/widget/FrameLayout;

    if-nez v14, :cond_9

    move-object v14, v5

    :cond_9
    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smallClockHostView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_a

    move-object v4, v5

    :cond_a
    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->clockViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;

    invoke-static {v14, v4, v10}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewClockViewBinder;->bind(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewClockViewModel;)V

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    :goto_2
    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->lockscreenSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    move-result v10

    iget v12, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->height:I

    iget v13, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->width:I

    iget-object v14, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartspaceViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;

    if-eqz v10, :cond_12

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_5

    :cond_c
    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartSpaceView:Landroid/view/View;

    if-eqz v10, :cond_d

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildAndConnectDateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartSpaceView:Landroid/view/View;

    if-le v13, v12, :cond_e

    const/4 v4, 0x1

    goto :goto_3

    :cond_e
    move v4, v8

    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;->getSmallClockTopPadding(Landroid/content/Context;Z)I

    move-result v4

    sget-object v10, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel;->Companion:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardSmartspaceViewModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v15, 0x7f0700c3

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v15, 0x7f0714bc

    invoke-static {v3, v15, v10}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f0700c2

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v3, v15, v5}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v5

    iget-object v11, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartSpaceView:Landroid/view/View;

    if-eqz v11, :cond_f

    invoke-virtual {v11, v10, v4, v5, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartSpaceView:Landroid/view/View;

    if-nez v4, :cond_10

    goto :goto_5

    :cond_10
    iget-boolean v5, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->shouldHighlightSelectedAffordance:Z

    if-eqz v5, :cond_11

    const v5, 0x3e99999a    # 0.3f

    goto :goto_4

    :cond_11
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    :goto_5
    iget-object v4, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->smartSpaceView:Landroid/view/View;

    if-eqz v4, :cond_14

    if-le v13, v12, :cond_13

    const/4 v5, 0x1

    goto :goto_6

    :cond_13
    move v5, v8

    :goto_6
    invoke-static {v14, v5, v3, v4}, Lcom/android/systemui/keyguard/ui/binder/KeyguardPreviewSmartspaceViewBinder;->bind(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardPreviewSmartspaceViewModel;ZLandroid/content/Context;Landroid/view/View;)V

    :cond_14
    const v3, 0x7f0a02b6

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_15

    sget-object v3, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;->INSTANCE:Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->communalTutorialViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/systemui/communal/ui/binder/CommunalTutorialIndicatorViewBinder;->bind(Landroid/widget/TextView;Lcom/android/systemui/communal/ui/viewmodel/CommunalTutorialIndicatorViewModel;Z)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_15
    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v3, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0144

    invoke-virtual {v3, v4, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    sget-object v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->Companion:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$Companion;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v10, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->bottomAreaViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->init(Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$MessageDisplayer;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/plugins/ActivityStarter;Ldagger/Lazy;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->display:Landroid/view/Display;

    if-eqz v2, :cond_16

    new-instance v14, Landroid/view/DisplayInfo;

    invoke-direct {v14}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v2, v14}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_7

    :cond_16
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_17

    iget v2, v14, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_8

    :cond_17
    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v2, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_8
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    if-eqz v14, :cond_18

    iget v4, v14, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_9

    :cond_18
    iget-object v4, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    :goto_9
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget v2, v2, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->width:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget v3, v3, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->height:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget v3, v3, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->width:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v3, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget v3, v3, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->height:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    sub-float/2addr v3, v2

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer$render$1;->this$0:Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->isDestroyed:Z

    if-eqz v2, :cond_19

    return-void

    :cond_19
    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/preview/KeyguardPreviewRenderer;->host:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    return-void
.end method
