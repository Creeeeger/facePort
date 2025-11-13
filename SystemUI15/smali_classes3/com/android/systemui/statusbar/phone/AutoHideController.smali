.class public final Lcom/android/systemui/statusbar/phone/AutoHideController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

.field public mAutoHideSuspended:Z

.field public final mDisplayId:I

.field public mFlexPanel:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field public mGameToolsShown:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsVisible:Z

.field public mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field public final mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

.field public mShouldHide:Z

.field public mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/IWindowManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mDisplayId:I

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public final checkUserAutoHide(Landroid/view/MotionEvent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    const/16 v3, 0x15e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mShouldHide:Z

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v5, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->shouldHideOnTouch()Z

    move-result v0

    and-int/2addr p1, v0

    :cond_4
    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v3, v2}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v5, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public final getCheckBarModesRunnable()Ljava/lang/Runnable;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCheckBarModesRunnable(Lcom/android/systemui/statusbar/AutoHideUiElement;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAnyTransientBarShown()Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mStatusBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mIsVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v3, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mIsVisible:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/statusbar/AutoHideUiElement;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final notifyRequestedGameToolsWin(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mGameToolsShown:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->suspendAutoHide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x15e

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final resumeSuspendedAutoHide()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v3, 0x8ca

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final suspendAutoHide()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_POLICY_VISIBILITY:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mObserver:Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController$AutoHideUiElementObserver;->notify(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->getCheckBarModesRunnable()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    return-void
.end method

.method public final touchAutoHide()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->isAnyTransientBarShown()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideController$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x8ca

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/AutoHideController;->mAutoHideSuspended:Z

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
