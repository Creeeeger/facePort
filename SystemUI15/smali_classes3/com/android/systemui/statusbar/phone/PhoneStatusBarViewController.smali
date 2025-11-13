.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGarden;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final commandQueue$delegate:Lkotlin/Lazy;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

.field public final heightContainer:Landroid/view/ViewGroup;

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

.field public final knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

.field public final leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

.field public final netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

.field public final phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field public final privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

.field public final quickPanelLogger$delegate:Lkotlin/Lazy;

.field public final rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

.field public final samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final sidePaddingContainer:Landroid/view/ViewGroup;

.field public final statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public statusContainer:Landroid/view/View;

.field public final statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

.field public final twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

.field public final viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/shade/ShadeLogger;",
            "Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;",
            "Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;",
            "Lcom/android/systemui/util/view/ViewUtil;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;",
            "Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainerController;",
            "Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;",
            "Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;",
            "Lcom/android/systemui/statusbar/policy/NetspeedViewController;",
            "Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$quickPanelLogger$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$quickPanelLogger$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->quickPanelLogger$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$commandQueue$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$commandQueue$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->commandQueue$delegate:Lkotlin/Lazy;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$PhoneStatusBarViewTouchHandler;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTouchEventHandler:Lcom/android/systemui/Gefingerpoken;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0dfd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    const/4 v2, 0x0

    move-object v3, p11

    invoke-static {v1, p11, v2}, Lcom/android/systemui/user/ui/binder/StatusBarUserChipViewBinder;->bind(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$$ExternalSyntheticLambda0;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->heightContainer:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0c13

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0c18

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0c11

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0ce6

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V

    return-void
.end method

.method public static final access$getCutoutRightSideAvailableWidth(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Landroid/graphics/Rect;)I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0c0f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105056c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070471

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, p1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    sub-int/2addr v3, v0

    sub-int/2addr v3, v4

    return v3
.end method

.method public static final synthetic access$getMView$p$s1936973844(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance p2, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndicatorBasicGardener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p2, v1, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "IndicatorGardenModel"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    const-string v1, "  height:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    const-string v1, "  hasCameraTopMargin:"

    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    const-string v1, "  cameraTopMargin:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v1, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    sub-int/2addr v0, v1

    const-string v1, "  statusBarContentsHeight="

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    const-string v1, "  leftPadding:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    const-string v1, "  rightPadding:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    const-string v1, "  leftContainer:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget v0, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    const-string v1, "  centerContainer:"

    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    iget p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  rightContainer:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "IndicatorGardenViewTreeLogHelper"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printDumpLog(Ljava/io/PrintWriter;Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;->printChildWidthRecursive(Ljava/io/PrintWriter;Landroid/view/ViewGroup;I)V

    sget-boolean p2, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "  KnoxStatusBarControlViewModel"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarHidden:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "    statusBarHidden="

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->statusBarIconsEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p2, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "    statusBarIconsEnabled="

    invoke-static {v0, p2, p1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryFaceAuthRepositoryImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;->knoxStatusBarCustomText:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    knoxStatusBarCustomText="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, " BasicRune.STATUS_LAYOUT_MARQUEE: true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centerContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getEssentialLeftWidth()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result p0

    return p0
.end method

.method public final getEssentialRightWidth()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v1, :cond_0

    const v3, 0x7f0a07cb

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->getClockWidth()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->getViewWidth()I

    move-result v2

    :cond_3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v3

    add-int/2addr p0, v2

    return p0
.end method

.method public final getGardenWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final getHeightContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->heightContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->leftContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->quickPanelLogger$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/QuickPanelLogger;

    return-object p0
.end method

.method public final getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->rightContainer:Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    return-object p0
.end method

.method public final getSidePaddingContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onInit()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public final onTouch(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->commandQueue$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->getQuickPanelLogger()Lcom/android/systemui/log/QuickPanelLogger;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLoggerHelper;->onTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object p0, p0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v1, "!panelsEnabled()"

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->shadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->setInteracting(IZ)V

    :cond_6
    return-void
.end method

.method public final onViewAttached()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->updateGardenWithNewModel(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateLeftPadding()I

    move-result v2

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->gardenAlgorithm:Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->calculateRightPadding()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateGarden(IILandroid/view/WindowInsets;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->updateMarqueeValues()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->knoxStateBarControlViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/knox/ui/binder/KnoxStatusBarControlBinder;->bind(Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarViewControl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mIndicatorGarden:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    const-string v2, "[QuickStar]PhoneStatusBarClockManager"

    if-eqz v1, :cond_0

    const v3, 0x7f0a061e

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mLeftContainer:Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0712

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mMiddleContainer:Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mGrandParentView:Landroid/view/ViewGroup;

    const v3, 0x7f0a09d9

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mRightContainer:Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->updateResources()V

    goto :goto_0

    :cond_0
    const-string v0, "onAttachedToWindow(), mGrandParentView is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v1, "PhoneStatusBarViewController"

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getMView$p$s1936973844(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f0a0163

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mIsGrayColor:Z

    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;

    iput-boolean v1, v0, Lcom/android/systemui/battery/SamsungBatteryMeterDrawable;->shouldShowGrayIcon:Z

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0a0ce7

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusContainer:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f0a0c1a

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v5, 0x7f0a0c15

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->onViewAttached(Landroid/view/ViewGroup;)V

    :cond_2
    sget-boolean v5, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SIDELING_CUTOUT:Z

    if-eqz v5, :cond_3

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/StatusIconContainerController;->view:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v5, v6, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mSidelingCutoutContainerInfo:Lcom/android/systemui/statusbar/phone/SidelingCutoutContainerInfo;

    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    aput-object v3, v2, v1

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->statusContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->setReadyToHandleTransition(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->moveFromCenterAnimationController:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->progressProvider:Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object v2, v2, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->transitionListener:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    iget-object v0, v0, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->animatedViews:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->configurationListener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$configurationListener$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v2, "PhoneStatusBarViewController"

    invoke-virtual {v0, v2}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->featureEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;->onViewDetached()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v2, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v3, "[QuickStar]PhoneStatusBarClockManager"

    invoke-virtual {v2, v3}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;->mClockPosition:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycleObserver:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$wakefulnessLifecycleObserver$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;->grayIconChangedCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$onViewAttached$3;

    return-void
.end method

.method public final sendTouchToView(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setImportantForAccessibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final touchIsWithinView(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/util/view/ViewUtil;->touchIsWithinView(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->gardener:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    return-void
.end method
