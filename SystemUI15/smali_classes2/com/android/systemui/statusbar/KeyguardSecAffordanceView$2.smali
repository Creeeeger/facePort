.class Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardBouncerStateChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mBlurPanelView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mIsShowBouncerAnimation:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRight:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isUnlockWaitNeeded(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->-$$Nest$mresetOnTimeout(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mHandler:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$14;

    const/16 p1, 0x3e9

    const-wide/16 v0, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartedGoingToSleep(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$2;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->updateBgBlur(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDeviceInteractive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mShortcutManager:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mScreenOnAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->cancelAnimator(Landroid/animation/Animator;)V

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mDrawBackgroundColor:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setIsDrawBackgroundCircle(Z)V

    :cond_0
    return-void
.end method
