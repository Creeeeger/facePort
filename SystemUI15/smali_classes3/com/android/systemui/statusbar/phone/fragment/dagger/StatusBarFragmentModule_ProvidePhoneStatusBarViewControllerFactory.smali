.class public final Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

.field public final phoneStatusBarViewProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    move-object v2, v1

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->samsungStatusBarGrayIconHelper:Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;

    move-object/from16 v28, v3

    const/16 v29, 0x0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeController:Lcom/android/systemui/shade/ShadeController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeViewController:Lcom/android/systemui/shade/ShadeViewController;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->panelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->windowRootView:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->userChipViewModel:Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusOverlayHoverListenerFactory:Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->privacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->viewTreeLogHelper:Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->statusIconContainerController:Lcom/android/systemui/statusbar/phone/StatusIconContainerController;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->twoPhoneModeIconController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;

    move-object/from16 v24, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->phoneStatusBarClockManager:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->knoxStateBarViewModel:Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;

    move-object/from16 v26, v3

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->netspeedViewController:Lcom/android/systemui/statusbar/policy/NetspeedViewController;

    move-object/from16 v27, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v29}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Ljavax/inject/Provider;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;Lcom/android/systemui/util/view/ViewUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusOverlayHoverListenerFactory;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/IndicatorGardenViewTreeLogHelper;Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;Lcom/android/systemui/statusbar/phone/StatusIconContainerController;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/TwoPhoneModeIconController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;Lcom/android/systemui/statusbar/phone/knox/ui/viewmodel/KnoxStatusBarControlViewModel;Lcom/android/systemui/statusbar/policy/NetspeedViewController;Lcom/android/systemui/statusbar/phone/SamsungStatusBarGrayIconHelper;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->phoneStatusBarViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentModule_ProvidePhoneStatusBarViewControllerFactory;->providePhoneStatusBarViewController(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    move-result-object p0

    return-object p0
.end method
