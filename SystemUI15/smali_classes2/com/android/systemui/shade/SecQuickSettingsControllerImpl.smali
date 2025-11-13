.class public final Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public canScrollDown:Z

.field public canScrollUp:Z

.field public deltaX:F

.field public deltaY:F

.field public final desktopManager$delegate:Lkotlin/Lazy;

.field public isBackGestureAllowed:Z

.field public lastDisplayTopInset:I

.field public lastNavigationBarBottomHeight:I

.field public final logBuilder:Ljava/lang/StringBuilder;

.field public final logProvider:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;

.field public final maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

.field public final modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;

.field public naviBarGestureMode:I

.field public final navigationBarController$delegate:Lkotlin/Lazy;

.field public final navigationModeController$delegate:Lkotlin/Lazy;

.field public final notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final panelExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

.field public final panelSplitHelper$delegate:Lkotlin/Lazy;

.field public final panelTouchBlockHelper$delegate:Lkotlin/Lazy;

.field public final panelViewControllerLazy:Ldagger/Lazy;

.field public final qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field public final qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

.field public final qsFrameLayoutSupplier:Ljava/util/function/Supplier;

.field public qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public final qsSupplier:Ljava/util/function/Supplier;

.field public final quickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public final resourcePicker$delegate:Lkotlin/Lazy;

.field public final shadeRepository$delegate:Lkotlin/Lazy;

.field public final tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

.field public final tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

.field public final touchAboveFalsingThresholdConsumer:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Landroid/content/Context;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/ShadeHeaderController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ldagger/Lazy;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;Ljava/util/function/Consumer;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/DoubleSupplier;",
            "Landroid/content/Context;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/shade/ShadeHeaderController;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Ldagger/Lazy;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/qs/QS;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/shade/NotificationPanelView;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/DoubleConsumer;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            "Ljava/util/function/IntSupplier;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p13

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->maxExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v0, p14

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->minExpansionHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v10, p15

    iput-object v10, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->notificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v11, p16

    iput-object v11, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelViewControllerLazy:Ldagger/Lazy;

    move-object/from16 v15, p17

    iput-object v15, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpandedSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v14, p18

    iput-object v14, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    move-object/from16 v13, p19

    iput-object v13, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    move-object/from16 v0, p31

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->touchAboveFalsingThresholdConsumer:Ljava/util/function/Consumer;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$blurController$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$blurController$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$desktopManager$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$desktopManager$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->desktopManager$delegate:Lkotlin/Lazy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->logBuilder:Ljava/lang/StringBuilder;

    new-instance v12, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;

    move-object v0, v12

    move-object/from16 v1, p9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;-><init>(Ljava/util/function/DoubleSupplier;Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Ljava/util/function/DoubleSupplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;)V

    iput-object v12, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->logProvider:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$logProvider$1;

    new-instance v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;

    invoke-direct {v0, v9}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;-><init>(Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;)V

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->modeChangedListener:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$modeChangedListener$1;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$navigationBarController$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$navigationBarController$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->navigationBarController$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$navigationModeController$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$navigationModeController$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->navigationModeController$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelExpansionStateInteractor:Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$panelSplitHelper$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$panelSplitHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelSplitHelper$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$panelTouchBlockHelper$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$panelTouchBlockHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelTouchBlockHelper$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$qsExpansionStateInteractor$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$qsExpansionStateInteractor$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsExpansionStateInteractor$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$resourcePicker$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$resourcePicker$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v1, "SQSCI"

    invoke-direct {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->quickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    sget-object v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$shadeRepository$2;->INSTANCE:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$shadeRepository$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    move-object v12, v0

    move-object/from16 v13, p5

    move-object/from16 v14, p21

    move-object/from16 v15, p22

    move-object/from16 v16, p23

    move-object/from16 v17, p24

    move-object/from16 v18, p25

    move-object/from16 v19, p26

    move-object/from16 v20, p27

    move-object/from16 v21, p17

    move-object/from16 v22, p19

    move-object/from16 v23, p28

    move-object/from16 v24, p29

    move-object/from16 v25, p30

    invoke-direct/range {v12 .. v25}, Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleSupplier;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/IntConsumer;Ljava/util/function/IntSupplier;)V

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tileChunkLayoutBarTouchHelper:Lcom/android/systemui/shade/SecQuickTileChunkLayoutBarTouchHelper;

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    new-instance v1, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$1;

    move-object/from16 v2, p5

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl$1;-><init>(Landroid/content/Context;)V

    move-object/from16 p21, v0

    move-object/from16 p22, p8

    move-object/from16 p23, p11

    move-object/from16 p24, p12

    move-object/from16 p25, p15

    move-object/from16 p26, v1

    move-object/from16 p27, p18

    move-object/from16 p28, p20

    move-object/from16 p29, p16

    invoke-direct/range {p21 .. p29}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;-><init>(Ljava/util/function/DoubleSupplier;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/function/IntSupplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ldagger/Lazy;)V

    iput-object v0, v9, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkIfScrollEnabled(FF)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 p2, 0x0

    cmpg-float v1, p1, p2

    const/4 v2, 0x1

    if-gez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollUp:Z

    if-nez p2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollDown:Z

    if-eqz p0, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    :goto_2
    return v0
.end method

.method public final closeQSTooltip()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->closeQSTooltip()V

    :cond_1
    return-void
.end method

.method public final getNonInterceptingScrollView()Lcom/android/systemui/qs/NonInterceptingScrollView;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    :cond_1
    return-object v1
.end method

.method public final getQsPanelController()Lcom/android/systemui/qs/SecQSPanelController;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/QSFragmentLegacy;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentLegacy;->mQsImpl:Lcom/android/systemui/qs/QSImpl;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    :cond_1
    return-object v1
.end method

.method public final isInTouchQsArea(F)Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsFrameLayoutSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateScrollViewLocationDelta()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->panelViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    sget-object v1, Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils;->Companion:Lcom/android/systemui/statusbar/events/BatteryChipAnimationUtils$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v4, :cond_0

    new-array v5, v1, [I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v5, v3

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaX:F

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    aget v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v4, :cond_1

    new-array v1, v1, [I

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v1, v0

    :cond_1
    sub-int/2addr v2, v3

    int-to-float v0, v2

    iput v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->deltaY:F

    return-void
.end method

.method public final updateScrollableDirection(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollUp:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollDown:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->qsScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollUp:Z

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->canScrollDown:Z

    :cond_3
    return-void
.end method
