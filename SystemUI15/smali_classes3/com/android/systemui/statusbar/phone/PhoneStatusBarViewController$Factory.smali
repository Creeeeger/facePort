.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public final indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

.field public final knoxStateBarViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

.field public final netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

.field public final panelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public final phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

.field public final privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public final progressProvider:Ljava/util/Optional;

.field public final samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

.field public final statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

.field public final statusOverlayHoverListenerFactory:Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;

.field public final twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

.field public final userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

.field public final viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

.field public final viewUtil:Lcom/android/systemui/util/view/ViewUtil;

.field public final windowRootView:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            "Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;",
            "Lcom/android/systemui/shade/ShadeController;",
            "Lcom/android/systemui/shade/ShadeViewController;",
            "Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/shade/ShadeLogger;",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p2

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->panelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->windowRootView:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusOverlayHoverListenerFactory:Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->knoxStateBarViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    return-void
.end method
