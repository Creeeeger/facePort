.class public final Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContinuityLayout:Landroid/widget/LinearLayout;

.field public mForceIsDismissible:Z

.field public final mKeyguardStateCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

.field public mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;

    new-instance p1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateListener:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p4, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p5, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->destroy()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->onViewDetached()V

    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateListener:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;-><init>(Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$BaseKeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mKeyguardStateCallback:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateListener:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public final updateLayout$2()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v2, "updateLayout() : "

    const-string v3, "KeyguardContinuityLockscreenAffordanceController"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    const v3, 0x7f0a059a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mContinuityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    const-wide v4, 0x3fadb22d0e560419L    # 0.058

    if-ne v0, v3, :cond_2

    const/16 v0, 0x15

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v4

    double-to-int v0, v6

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_2
    const/16 v0, 0x13

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v6, v4

    double-to-int v0, v6

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v0, 0x51

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v3, v0

    const-wide v5, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceController;->mContinuityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
