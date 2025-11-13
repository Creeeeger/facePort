.class public final Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public final iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeader;Lcom/android/systemui/battery/BatteryMeterViewController;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    const p2, 0x7f0a0c0f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->SUB_SCREEN_QUICK_PANEL:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    move-object v0, p1

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/statusbar/pipeline/wifi/ui/WifiUiAdapter;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/shared/ui/BTTetherUiAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->batteryMeterViewController:Lcom/android/systemui/battery/BatteryMeterViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    iget-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    iget-object v2, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07008a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    iput p0, v0, Lcom/android/systemui/battery/BatteryMeterViewController;->mAdditionalScaleFactorForSpecificBatteryView:F

    return-void
.end method

.method public final onViewAttached()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060983

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;->setTint(II)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mAdditionalScaleFactor:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubScreenQuickPanelHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    return-void
.end method
