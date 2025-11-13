.class public final Lcom/android/keyguard/KeyguardSwipeViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# instance fields
.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

.field public final mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 10

    move-object v8, p0

    move-object/from16 v9, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSwipeViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$1;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    iput-object v0, v8, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    move-object/from16 v0, p6

    iput-object v0, v8, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v9, v8, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    iput-object v8, v9, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSwipeView;

    const v1, 0x7f0a059b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x7f130a22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f130a8b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final callUserActivity()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method public final getInitialMessageResId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 1

    const-string p0, "KeyguardSwipeView"

    const-string v0, "onPause()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onResume(I)V
    .locals 2

    const-string p0, "onResume(reason = + "

    const-string v0, " )"

    const-string v1, "KeyguardSwipeView"

    invoke-static {p1, p0, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onUnlockExecuted()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v2, v1, p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZILcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSwipeView;

    new-instance v1, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;-><init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeTouchListener:Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSwipeViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSwipeView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSwipeView;->mSwipeTouchListener:Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;

    return-void
.end method

.method public final reset$1()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistanceCount:I

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownPos:Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    :cond_0
    return-void
.end method
