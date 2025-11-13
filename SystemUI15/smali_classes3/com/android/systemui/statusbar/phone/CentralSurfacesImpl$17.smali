.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateResources$1()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;->INSTANCE:Lcom/android/systemui/statusbar/phone/PredictiveBackSysUiFlag;

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-eqz v0, :cond_0

    const-string v0, "CentralSurfaces"

    const-string v1, "onConfigChanged setEnableOnBackInvokedCallback true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setEnableOnBackInvokedCallback(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mToolTipWindow:Lcom/android/systemui/qs/buttons/QSTooltipWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/buttons/QSTooltipWindow;->hideToolTip()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->setInDisplayFingerprintSensorPosition(Landroid/util/DisplayMetrics;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/BasicRune;->AI_AGENT_EFFECT:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAiAgentEffect:Lcom/android/systemui/aiagent/AiAgentEffect;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/aiagent/AiAgentEffect;->updateConfiguration(Landroid/content/res/Configuration;)V

    :cond_3
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate$1()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->reloadUserInfo()V

    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    iget-object v5, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    iget-object v6, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerContainer:Landroid/view/ViewGroup;

    iput-object v1, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLp:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v3, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->bouncerLpChanged:Landroid/view/WindowManager$LayoutParams;

    :cond_2
    new-instance v1, Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mSysUIKeyEventHandler:Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-direct {v1, v2, v3, v5}, Lcom/android/keyguard/KeyguardBouncerContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/keyevent/domain/interactor/SysUIKeyEventHandler;Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerContainer:Landroid/widget/FrameLayout;

    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->addBouncer(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0a057b

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d017b

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mBouncerViewBinder:Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;

    invoke-virtual {p0, v1}, Lcom/android/systemui/bouncer/ui/binder/BouncerViewBinder;->bind(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onThemeChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate$1()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->onThemeChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onThemeChanged()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/AutoReinflateContainer;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/systemui/AutoReinflateContainer;

    invoke-virtual {v0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayout()V

    :cond_2
    sget v0, Lcom/android/systemui/statusbar/notification/shared/NotificationIconContainerRefactor;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onThemeChanged()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate$1()V

    :cond_0
    return-void
.end method
