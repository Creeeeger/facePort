.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->updateScrollViewLocationDelta()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_2
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 3

    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens$5()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateRes()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->mascotHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->refreshRadius()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onDensityOrFontScaleChanged()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->onDensityOrFontScaleChanged()V

    :cond_3
    return-void
.end method

.method public final onSmallestScreenWidthChanged()V
    .locals 3

    const-string v0, "onSmallestScreenWidthChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateUserSwitcherFlags()V

    iget-boolean v2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ConfigurationListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method
