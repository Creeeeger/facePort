.class public final Lcom/android/systemui/shade/NotificationPanelViewController$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFullScreenMode() enabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gtz v6, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "updateAlpha() mFullScreenModeEnabled = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", alpha = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    if-eqz p2, :cond_1

    cmpl-float p2, v5, v4

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    if-eqz p4, :cond_3

    const/4 p2, 0x0

    invoke-interface {p4, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-interface {p4, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    sget-object p3, Lcom/android/app/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda61;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda61;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;Z)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setFaceWidgetFullScreenMode(Z)V

    if-eqz p1, :cond_4

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p2, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset(Z)V

    :cond_4
    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/WindowInsetsController;->setAnimationsDisabled(Z)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p3, p2, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iget-object p2, p2, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecQuickSettingsAffordanceInteractor:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    if-eqz p0, :cond_7

    const-string/jumbo p2, "setFullScreenMode"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method
