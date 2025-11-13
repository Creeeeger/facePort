.class public final Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

.field public static final TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public allowMediaPlayerOnLockScreen:Z

.field public final animationScaleObserver:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public carouselLocale:Ljava/util/Locale;

.field public carouselMeasureHeight:I

.field public carouselMeasureWidth:I

.field public final commonViewModels:Ljava/util/List;

.field public final context:Landroid/content/Context;

.field public final controllerByViewModel:Ljava/util/Map;

.field public currentCarouselHeight:I

.field public currentCarouselWidth:I

.field public currentEndLocation:I

.field public currentStartLocation:I

.field public currentTransitionProgress:F

.field public currentlyExpanded:Z

.field public currentlyShowingOnlyActive:Z

.field public final debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

.field public desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

.field public desiredLocation:I

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isRtl:Z

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;

.field public final keysNeedRemoval:Ljava/util/Set;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

.field public final mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

.field public final mediaCarouselViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

.field public final mediaContent:Landroid/view/ViewGroup;

.field public final mediaControlPanelFactory:Ljavax/inject/Provider;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaFrame:Landroid/view/ViewGroup;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

.field public final mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

.field public final mediaViewControllerFactory:Ljavax/inject/Provider;

.field public final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public playersVisible:Z

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public settingsButton:Landroid/view/View;

.field public shouldScrollToKey:Z

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public updateHostVisibility:Lkotlin/jvm/functions/Function0;

.field public updateUserVisibility:Lkotlin/jvm/functions/Function0;

.field public final visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/time/SystemClock;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;Lcom/android/systemui/media/controls/util/MediaFlags;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Ljavax/inject/Provider;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/time/SystemClock;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/media/controls/util/MediaUiEventLogger;",
            "Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;",
            "Lcom/android/systemui/media/controls/util/MediaFlags;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p18

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->bgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    iput-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v5, p22

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredLocation:I

    iput v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    iput v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    new-instance v5, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;

    move-object/from16 v8, p8

    invoke-direct {v5, v8, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->animationScaleObserver:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$animationScaleObserver$1;

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z

    new-instance v12, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;

    invoke-direct {v12, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    new-instance v11, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;

    invoke-direct {v11, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    iput-object v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$keyguardUpdateMonitorCallback$1;

    sget-object v5, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$updateHostVisibility$1;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$updateHostVisibility$1;

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->commonViewModels:Ljava/util/List;

    const-string v5, "MediaCarouselController"

    move-object/from16 v6, p14

    invoke-static {v6, v5, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-direct {v6, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0d0200

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/view/ViewGroup;

    const/4 v5, 0x3

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iput-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const v5, 0x7f0a06ca

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    iput-object v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    const v5, 0x7f0a06da

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/qs/PageIndicator;

    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    new-instance v5, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    new-instance v10, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$1;

    invoke-direct {v10, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$1;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$2;

    invoke-direct {v14, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$2;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$3;-><init>(Ljava/lang/Object;)V

    move-object/from16 p5, v12

    new-instance v12, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$4;

    invoke-direct {v12, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$4;-><init>(Ljava/lang/Object;)V

    new-instance v15, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$5;

    invoke-direct {v15, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$5;-><init>(Ljava/lang/Object;)V

    move-object/from16 p6, v5

    move-object/from16 v16, v6

    move-object v6, v7

    move-object v3, v7

    move-object/from16 v7, v16

    move-object/from16 v8, p8

    move-object v4, v9

    move-object v9, v10

    const/4 v2, 0x0

    move-object v10, v14

    move-object v14, v11

    move-object v11, v1

    move-object/from16 v1, p5

    move-object/from16 v13, p13

    move-object/from16 v17, v14

    move-object v14, v15

    move-object/from16 v15, p15

    invoke-direct/range {v5 .. v15}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/controls/ui/view/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V

    iput-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselLocale:Ljava/util/Locale;

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    move v14, v7

    goto :goto_0

    :cond_0
    move v14, v2

    :goto_0
    iget-boolean v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    const/4 v7, 0x0

    if-eq v14, v6, :cond_3

    iput-boolean v14, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v5, v5, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, v5, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v7

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    sub-int v10, v2, v6

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    invoke-virtual {v5, v10}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->inflateSettingsButton()V

    const v2, 0x7f0a06c8

    invoke-virtual {v3, v2}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    move-object/from16 v2, p12

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    move-object/from16 v2, p4

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p18

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$8;

    invoke-direct {v1, v0, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$8;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$9;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    move-object/from16 v0, p9

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final access$updateCarouselDimensions(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget v4, v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentWidth:I

    iget-object v5, v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v6

    :goto_1
    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->currentHeight:I

    iget-object v3, v3, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v6

    :cond_1
    float-to-int v3, v6

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_6

    :cond_3
    iput v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselWidth:I

    iput v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselHeight:I

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v3, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->carouselHeight:I

    if-ne v2, v3, :cond_4

    if-eq v1, v3, :cond_5

    :cond_4
    iput v1, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->carouselWidth:I

    iput v2, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->carouselHeight:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicatorLocation()V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_6
    return-void
.end method

.method public static synthetic getCurrentEndLocation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurrentlyExpanded$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMediaCarousel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPageIndicator$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSettingsButton$annotations()V
    .locals 0

    return-void
.end method

.method public static logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;III[IIIIZI)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p9

    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move/from16 v6, p5

    :goto_0
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v9, v5, 0x40

    if-eqz v9, :cond_2

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v9, v9, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p8

    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    if-gt v10, v9, :cond_4

    goto/16 :goto_9

    :cond_4
    sget-object v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v10, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-boolean v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-nez v11, :cond_5

    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v12}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->isRecommendationActive()Z

    move-result v12

    if-nez v12, :cond_5

    sget-object v12, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    if-nez v12, :cond_5

    goto/16 :goto_9

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    array-length v12, v4

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_a

    aget v14, v4, v13

    if-eqz v5, :cond_6

    const/4 v15, -0x1

    goto :goto_5

    :cond_6
    move v15, v9

    :goto_5
    iget-boolean v7, v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    if-eqz v11, :cond_7

    const/16 v16, 0xf

    :goto_6
    move/from16 p5, v5

    move/from16 v4, v16

    goto :goto_7

    :cond_7
    if-eqz v7, :cond_8

    const/16 v16, 0x2b

    goto :goto_6

    :cond_8
    const/16 v16, 0x1f

    goto :goto_6

    :goto_7
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    move-object/from16 p6, v10

    const/16 v10, 0x160

    invoke-virtual {v5, v10}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v15}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v4, 0x1

    invoke-virtual {v5, v4, v4}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    new-array v10, v4, [B

    invoke-virtual {v5, v10}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    new-array v10, v4, [B

    invoke-virtual {v5, v10}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v4

    invoke-static {v4}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    sget-boolean v4, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerKt;->DEBUG:Z

    if-eqz v4, :cond_9

    const-string v4, "Log Smartspace card event id: "

    const-string v5, " instance id: "

    const-string v10, " surface: "

    invoke-static {v1, v2, v4, v5, v10}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rank: "

    const-string v10, " cardinality: "

    invoke-static {v4, v14, v5, v9, v10}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isRecommendationCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSsReactivated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " interactedSubcardRank: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " interactedSubcardCardinality: "

    const-string v7, " received_latency_millis: "

    invoke-static {v4, v6, v5, v8, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v5, "MediaCarouselController"

    const/4 v7, 0x0

    invoke-static {v7, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v10, p6

    goto/16 :goto_4

    :cond_a
    :goto_9
    return-void
.end method

.method public static synthetic removePlayer$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;
    .locals 1

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZZ)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final closeGuts(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->closeGuts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keysNeedRemoval: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataKeys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderedPlayerSortKeys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "visiblePlayerSortKeys: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->commonViewModels:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "commonViewModels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "smartspaceMediaData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->shouldPrioritizeSs:Z

    const-string/jumbo v1, "shouldPrioritizeSs: "

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselWidth:I

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredLocation:I

    const-string v1, "location: "

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "state: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", only active "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->isSwipedAway:Z

    const-string p2, "isSwipedAway: "

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final inflateSettingsButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0d0201

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->settingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iput-object v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010571

    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->cornerRadius:I

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->updateSettingsPresentation()V

    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->invalidateOutline()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_3

    move-object v2, v0

    :cond_3
    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$inflateSettingsButton$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final listenForAnyStateToGoneKeyguardTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToGoneKeyguardTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToGoneKeyguardTransition$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForAnyStateToLockscreenTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToLockscreenTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForAnyStateToLockscreenTransition$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForLockscreenSettingChanges$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForLockscreenSettingChanges$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$listenForLockscreenSettingChanges$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final logSmartspaceImpression(Z)V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v0, :cond_6

    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->isActive:Z

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-boolean v8, v8, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    if-nez v8, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-object v5, v5, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    iget-boolean v5, v5, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v7

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    move v4, v6

    :goto_2
    if-eq v4, v6, :cond_4

    goto :goto_0

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_6

    iget v6, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    iget v7, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result p1

    filled-new-array {p1}, [I

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v5, 0x320

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x1f0

    move-object v4, p0

    invoke-static/range {v4 .. v13}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;III[IIIIZI)V

    iput-boolean v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsImpressed:Z

    :cond_6
    return-void
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/view/MediaHostState;ZJJ)Lkotlin/Unit;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "MediaCarouselController#onDesiredLocationChanged"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_d

    :try_start_0
    iget v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredLocation:I

    if-eq v5, v1, :cond_1

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;

    invoke-direct {v6, v0, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$onDesiredLocationChanged$1$1$1;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    iput v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredLocation:I

    iput-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getExpansion()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    if-eq v8, v5, :cond_3

    :try_start_1
    iput-boolean v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z

    iget-boolean v5, v9, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    invoke-virtual {v0, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateSeekbarListening(Z)V

    :cond_3
    iget-boolean v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {v5}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v8, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    if-eqz p3, :cond_6

    iget-object v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iput-boolean v7, v11, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animateNextStateChange:Z

    move-wide/from16 v12, p4

    iput-wide v12, v11, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDuration:J

    move-wide/from16 v14, p6

    iput-wide v14, v11, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->animationDelay:J

    goto :goto_4

    :cond_6
    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    :goto_4
    if-eqz v5, :cond_7

    iget-object v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v11, v11, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v11, :cond_7

    xor-int/lit8 v11, p3, 0x1

    invoke-virtual {v10, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->closeGuts(Z)V

    :cond_7
    iget-object v10, v10, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-object v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v11, v11, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-nez v4, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    iget-object v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-virtual {v10, v4, v6}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->obtainViewState(Lcom/android/systemui/media/controls/ui/view/MediaHostState;Z)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v11, v10, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v10, v4, v1, v11}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->updateViewStateSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-object v4, v11

    :cond_9
    :goto_5
    if-eqz v4, :cond_5

    iget-object v10, v10, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v10, v4}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    goto :goto_3

    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v1

    xor-int/2addr v1, v7

    iput-boolean v1, v9, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->showsSettingsButton:Z

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result v1

    iput-boolean v1, v9, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->falsingProtectionNeeded:Z

    invoke-interface/range {p2 .. p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->playersVisible:Z

    if-eq v1, v2, :cond_b

    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->playersVisible:Z

    if-eqz v1, :cond_b

    invoke-virtual {v9, v6}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateCarouselSize()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :goto_6
    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_c
    throw v0

    :cond_d
    const/4 v4, 0x0

    :goto_7
    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_e
    return-object v4
.end method

.method public final onSwipeToDismiss()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v12, v9, 0x1

    if-ltz v9, :cond_1

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-boolean v2, v13, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsImpressed:Z

    if-eqz v2, :cond_0

    iget v4, v13, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSmartspaceId:I

    iget v5, v13, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    invoke-virtual {v13}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v6

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v3, 0x2f9

    const/4 v7, 0x0

    const/16 v11, 0xb0

    move-object v2, p0

    invoke-static/range {v2 .. v11}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;III[IIIIZI)V

    iput-boolean v1, v13, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsImpressed:Z

    :cond_0
    move v9, v12

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->isSwipedAway:Z

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->DISMISS_SWIPE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    invoke-interface {p0}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->onSwipeToDismiss()V

    return-void
.end method

.method public final removePlayer(Ljava/lang/String;ZZZ)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;
    .locals 8

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v1, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {p1, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gt v2, v4, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eqz v2, :cond_5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    :cond_5
    iget-object v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eqz v7, :cond_7

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_2

    :cond_7
    move v5, v2

    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {v4}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    iget v5, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    sub-int/2addr v2, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    goto :goto_3

    :cond_9
    move-object v4, v1

    :goto_3
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v4, :cond_a

    iget-object v1, v4, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    :cond_a
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->onDestroy()V

    invoke-virtual {v3}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->onPlayersChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicator$2()V

    const-wide/16 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;

    if-eqz p2, :cond_b

    invoke-interface {p0, p1, v1, v2, p4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissMediaData(Ljava/lang/String;JZ)Z

    :cond_b
    if-eqz p3, :cond_d

    invoke-interface {p0, p1, v1, v2}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    goto :goto_4

    :cond_c
    move-object v0, v1

    :cond_d
    :goto_4
    return-object v0
.end method

.method public final reorderAllPlayers(Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v2, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->onPlayersChanged()V

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    sget-object v3, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    iget-object v4, v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->shouldScrollToKey:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    iput-boolean v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->shouldScrollToKey:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_5

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_2

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v1

    :cond_6
    move v5, v2

    :goto_3
    if-eq v5, v2, :cond_c

    if-eqz p1, :cond_a

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ltz v3, :cond_8

    check-cast v4, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    invoke-virtual {p1, v4}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v1

    :cond_9
    move v3, v2

    :goto_5
    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_a
    if-nez v1, :cond_c

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    goto :goto_6

    :cond_b
    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_c

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollToPlayer(II)V

    :cond_c
    :goto_6
    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq p2, v0, :cond_d

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const-string p2, "Size of players list and number of views in carousel are out of sync. Players size is "

    const-string v0, ". View count is "

    const-string v1, "."

    invoke-static {p1, p0, p2, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCarouselController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_8

    :cond_0
    iput p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    iput p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    iput p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object p2, p2, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    invoke-virtual {p0, p2, p4}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateViewControllerToState(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    iget p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p2

    goto :goto_1

    :cond_2
    move p2, p3

    :goto_1
    iget p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p1

    goto :goto_2

    :cond_3
    move p1, p2

    :goto_2
    iget-boolean p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne p4, p2, :cond_6

    iget p4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p4, v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    cmpg-float p4, p4, v0

    if-nez p4, :cond_5

    goto :goto_3

    :cond_5
    if-eq p1, p2, :cond_7

    :cond_6
    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyShowingOnlyActive:Z

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_8
    return-void
.end method

.method public final updateCarouselSize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeight()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_9

    :cond_3
    iput v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselMeasureWidth:I

    iput v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->carouselMeasureHeight:I

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    const v3, 0x7f070df2

    invoke-static {v2, v3, v0}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result v4

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/HorizontalScrollView;->measure(II)V

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v5, v1, v1, v0, v3}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iput v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    iget v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-le v1, v2, :cond_6

    sub-int/2addr v1, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_4

    :cond_6
    add-int v2, v0, v1

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v2, v0, v2

    :cond_8
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    :cond_9
    return-void
.end method

.method public final updatePageIndicator$2()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method public final updatePageIndicatorAlpha()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/controller/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getVisible()Z

    move-result v2

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    iget v6, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/view/MediaHostState;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/media/controls/ui/view/MediaHostState;->getSquishFraction()F

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eqz v1, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {v9}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    sget-object v9, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->Companion:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v0, v8

    sub-float v8, v3, v8

    div-float/2addr v0, v8

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    sget-object v8, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->TRANSFORM_BEZIER:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    if-eqz v1, :cond_5

    if-nez v2, :cond_7

    :cond_5
    iget p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_6

    sub-float p0, v3, p0

    :cond_6
    const v1, 0x3f733333    # 0.95f

    invoke-static {v1, v3, v4, v3, p0}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    invoke-static {p0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    invoke-static {v5, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    :cond_7
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final updatePageIndicatorLocation()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselWidth:I

    :goto_0
    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentCarouselWidth:I

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    add-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final updatePlayers(Z)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    const v3, 0x7f060460

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v4, v3, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iput-object v2, v3, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, v3, Lcom/android/systemui/qs/PageIndicator;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v4, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    sget-object v4, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    new-instance v8, Lkotlin/Triple;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-object v10, v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->data:Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    iget-boolean v7, v7, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsMediaRec:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Triple;

    invoke-virtual {v6}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/android/systemui/media/controls/shared/model/MediaData;

    invoke-virtual {v6}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v8, 0x3

    const/16 v9, 0x8

    const/4 v14, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x1

    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    if-eqz v6, :cond_f

    sget-object v6, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-static {v0, v7, v9}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->targetId:Ljava/lang/String;

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v9, "MediaCarouselController#addSmartspaceMediaRecommendations"

    invoke-static {v9}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    sget-boolean v9, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerKt;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v13, "MediaCarouselController"

    if-eqz v9, :cond_5

    :try_start_1
    const-string v9, "Updating smartspace target in carousel"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_5
    :goto_4
    sget-object v9, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    if-eqz v9, :cond_6

    sget-object v15, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v15, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    goto :goto_5

    :cond_6
    move-object v9, v14

    :goto_5
    if-eqz v9, :cond_8

    invoke-virtual {v1}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    const-string v6, "Skip adding smartspace target in carousel"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    move-object/from16 v19, v1

    goto/16 :goto_c

    :cond_8
    :try_start_2
    invoke-static {}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaKey()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

    if-eqz v1, :cond_9

    const/16 v4, 0xc

    :try_start_3
    invoke-static {v0, v1, v4}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->onDestroy()V

    :cond_9
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    sget-object v4, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder$Companion;

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x7f0d0210

    invoke-virtual {v9, v4, v12, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    invoke-direct {v8, v4, v14}, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    :try_start_4
    iget-object v8, v8, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    sget-object v9, Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;->RECOMMENDATION:Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;

    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;Lcom/android/systemui/media/controls/ui/controller/MediaViewController$TYPE;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v9}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    iput-object v8, v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->configurationChangeListener:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda2;

    iget-object v8, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    iget-object v8, v8, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    new-instance v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;

    const/4 v12, 0x1

    invoke-direct {v9, v1, v12}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;I)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;

    invoke-direct {v8, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$addSmartspaceMediaRecommendations$1$3;-><init>(Ljava/lang/Object;)V

    iput-object v8, v4, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;->recommendations:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mRecommendationViewHolder:Lcom/android/systemui/media/controls/ui/view/RecommendationViewHolder;

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget v3, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    sput-boolean v5, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->shouldPrioritizeSs:Z

    invoke-static {v6, v5}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;Z)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v2, :cond_b

    invoke-virtual {v2, v6}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;->logPotentialMemoryLeak(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->onDestroy()V

    :cond_c
    throw v14

    :cond_d
    const/4 v0, 0x0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    if-eqz v7, :cond_e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_e
    throw v0

    :cond_f
    sget-object v6, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaData:Ljava/util/Map;

    move-object v10, v13

    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    if-eqz v10, :cond_10

    iget-boolean v10, v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;->isSsReactivated:Z

    move/from16 v17, v10

    goto :goto_7

    :cond_10
    move/from16 v17, v5

    :goto_7
    if-eqz p1, :cond_11

    invoke-static {v0, v7, v9}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;Ljava/lang/String;I)Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    :cond_11
    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_12

    const-string v9, "MediaCarouselController#addOrUpdatePlayer"

    invoke-static {v9}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_12
    :try_start_5
    check-cast v13, Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    if-eqz v9, :cond_13

    sget-object v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v10, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    move-object v13, v9

    goto :goto_8

    :cond_13
    move-object v13, v14

    :goto_8
    sget-object v9, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->visibleMediaPlayers:Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    iget v10, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->elementAtOrNull(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;

    if-nez v13, :cond_19

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v13, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->Companion:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder$Companion;

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v13, 0x7f0d0212

    invoke-virtual {v9, v13, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v9, v8}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v8, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    invoke-direct {v8, v9}, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;-><init>(Landroid/view/View;)V

    iget-object v9, v8, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v5}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    invoke-virtual {v12, v8}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object v13, v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    :try_start_6
    new-instance v8, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$addOrUpdatePlayer$1$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController$addOrUpdatePlayer$1$1;-><init>(Ljava/lang/Object;)V

    iput-object v8, v13, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v11, -0x1

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v9, v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    if-eqz v9, :cond_14

    iget-object v9, v9, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v9, :cond_14

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_14
    :goto_9
    invoke-virtual {v12, v15, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    iget-boolean v8, v3, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz v8, :cond_15

    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z

    if-eqz v8, :cond_15

    const/4 v8, 0x1

    goto :goto_a

    :cond_15
    move v8, v5

    :goto_a
    iget-object v9, v12, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;

    invoke-direct {v11, v9, v8}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Z)V

    iget-object v8, v9, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v8, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

    move-object v8, v6

    move-object/from16 v16, v9

    const/4 v6, 0x1

    move-object v9, v7

    move-object v5, v10

    move-object v10, v15

    move-object/from16 v19, v11

    move-object v11, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v1

    move-object v1, v13

    move/from16 v13, v17

    move-object/from16 v14, v16

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;)V

    invoke-virtual {v0, v1, v6}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updateViewControllerToState(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;Z)V

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->shouldScrollToKey:Z

    if-eqz v1, :cond_16

    iget-object v1, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->shouldScrollToKey:Z

    if-nez v1, :cond_18

    iget-boolean v1, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->active:Z

    if-eqz v1, :cond_18

    :cond_17
    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    :cond_18
    move v1, v6

    goto :goto_b

    :cond_19
    move-object/from16 v19, v1

    move-object v5, v10

    const/4 v1, 0x1

    invoke-virtual {v13, v15, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/controls/shared/model/MediaData;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iget-object v14, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->debugLogger:Lcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;

    move-object v8, v6

    move-object v9, v7

    move-object v10, v15

    move-object v11, v13

    move/from16 v13, v17

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/controls/shared/model/MediaData;Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/util/time/SystemClock;ZLcom/android/systemui/media/controls/ui/controller/MediaCarouselControllerLogger;)V

    sget-object v6, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->smartspaceMediaData:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    if-eqz v6, :cond_1a

    iget-object v6, v6, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;->packageName:Ljava/lang/String;

    if-nez v6, :cond_1b

    :cond_1a
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    :cond_1b
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-nez v8, :cond_1c

    iget-boolean v8, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->shouldScrollToKey:Z

    if-eqz v8, :cond_1d

    iget-object v8, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->isPlaying:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, v15, Lcom/android/systemui/media/controls/shared/model/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    :cond_1d
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->updatePageIndicator$2()V

    invoke-virtual {v3}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->onPlayersChanged()V

    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v18, :cond_1e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1e
    :goto_c
    if-eqz p1, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->reorderAllPlayers(Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData$MediaSortKey;Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v1, v19

    const/4 v5, 0x0

    goto/16 :goto_3

    :goto_d
    if-eqz v18, :cond_20

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_20
    throw v0

    :cond_21
    return-void
.end method

.method public final updateSeekbarListening(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/media/controls/ui/controller/MediaPlayerData;->mediaPlayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentlyExpanded:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Z)V

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateViewControllerToState(Lcom/android/systemui/media/controls/ui/controller/MediaViewController;Z)V
    .locals 6

    iget v1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentStartLocation:I

    iget v2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentEndLocation:I

    iget v3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaCarouselController;->currentTransitionProgress:F

    sget p0, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->$r8$clinit:I

    const/4 v5, 0x0

    move-object v0, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->setCurrentState(IIFZZ)V

    return-void
.end method
