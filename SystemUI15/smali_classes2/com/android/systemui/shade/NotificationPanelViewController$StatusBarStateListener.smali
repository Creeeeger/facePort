.class public final Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onDozeAmountChanged(FF)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLinearDarkAmount:F

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez p2, :cond_0

    sget-object p2, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    const-string p2, "NotificationPanelView"

    const-string v0, "Failed to get PluginFaceWidgetManager"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mFaceWidgetContainerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;

    if-eqz p2, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_FULLSCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldHideLightRevealScrimOnWakeUp()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    iget-object p2, p2, Lcom/android/systemui/facewidget/plugin/FaceWidgetContainerWrapper;->mPluginKeyguardStatusView:Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;->setDarkAmount(F)V

    :cond_2
    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    const-string p1, "onDozeAmountChanged"

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController$StatusBarStateListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->goingToFullShade()Z

    move-result v2

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v0, v6, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/DozeParameters;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->shouldDelayKeyguardShow()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v5, :cond_1

    if-ne v0, v6, :cond_1

    sget-object v9, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v11, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v12, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    iget v13, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    iget-object v15, v9, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->contentsContainerPosition:Ljava/util/List;

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZLjava/util/List;)V

    :cond_1
    sget-object v9, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v9, v0, v10, v4, v2}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IIZZ)V

    sget-object v4, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    iput v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput v0, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mBarState:I

    const/4 v9, 0x2

    iget-object v10, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    if-eqz v10, :cond_2

    iget-object v10, v10, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v10, v10, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v10}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v9, :cond_2

    iget-object v10, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v10, :cond_2

    invoke-interface {v10, v6}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    :cond_2
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/16 v11, 0x8

    const/4 v12, 0x4

    if-ne v5, v6, :cond_5

    if-nez v2, :cond_3

    if-ne v0, v9, :cond_5

    :cond_3
    iget-boolean v2, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v2, :cond_4

    iget-wide v13, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    const-wide/16 v15, 0x2

    div-long/2addr v2, v15

    goto :goto_1

    :cond_4
    const-wide/16 v13, 0x0

    const-wide/16 v2, 0x168

    :goto_1
    iget-object v15, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v15, v13, v14, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarOut(JJ)V

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateMinHeight()V

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateNightMode(I)V

    sget-boolean v2, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    goto/16 :goto_6

    :cond_5
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-ne v5, v9, :cond_7

    if-ne v0, v6, :cond_7

    iget-object v12, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->animateKeyguardStatusBarIn()V

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateNightMode(I)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset(Z)V

    sget-boolean v2, Lcom/android/systemui/CscRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v3, :cond_6

    move v3, v11

    goto :goto_2

    :cond_6
    move v3, v7

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    goto/16 :goto_6

    :cond_7
    if-nez v5, :cond_8

    if-ne v0, v6, :cond_8

    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    if-eqz v8, :cond_9

    const-string v13, "Updating keyguard status bar state to visible"

    invoke-virtual {v10, v13}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v13, "Updating keyguard status bar state to invisible"

    invoke-virtual {v10, v13}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    :goto_3
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    if-eqz v8, :cond_a

    move v12, v7

    :cond_a
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13, v12}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState(FI)V

    :goto_4
    if-eqz v8, :cond_c

    iget v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eq v5, v10, :cond_c

    iget-object v10, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    :cond_b
    iget-object v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardEditModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v10, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean v10, v10, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-eqz v10, :cond_d

    iget-object v2, v2, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->editModeAnimatorController:Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "dismissEditActivity "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "KeyguardEditModeAnimatorController"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->isEditMode()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v2, v7}, Lcom/android/systemui/keyguard/animator/KeyguardEditModeAnimatorController;->animate(Z)V

    goto :goto_5

    :cond_c
    if-ne v5, v6, :cond_d

    if-nez v0, :cond_d

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    :cond_d
    :goto_5
    if-ne v5, v6, :cond_e

    if-nez v0, :cond_e

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAnimationFinishedRunnables:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;->run()V

    :cond_e
    :goto_6
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->assertInLegacyMode()V

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateForHeadsUp(Z)V

    if-eqz v8, :cond_f

    invoke-virtual {v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_f
    invoke-virtual {v1, v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    const-string v2, "onStateChanged"

    iput-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeAnimateBottomAreaAlpha()V

    invoke-virtual {v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateQsState$1$1()V

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v2, :cond_10

    iget-object v2, v4, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSecQuickSettingsControllerImpl:Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/SecQuickSettingsControllerImpl;->tabletHorizontalPanelPositionHelper:Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v6}, Lcom/android/systemui/shade/SecTabletHorizontalPanelPositionHelper;->resetHorizontalPanelPosition(Z)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_10
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->onBarStateChanged(I)V

    if-ne v5, v0, :cond_11

    if-ne v0, v6, :cond_11

    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockViewMode:I

    if-eqz v2, :cond_11

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->setViewMode(I)V

    :cond_11
    iget v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isWindowSecured()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v2, v7}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    :cond_12
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v2, :cond_14

    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne v3, v6, :cond_13

    move v11, v7

    :cond_13
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecNotificationPanelViewController:Lcom/android/systemui/shade/SecNotificationPanelViewController;

    if-eqz v2, :cond_1b

    sget-object v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v3, :cond_15

    goto :goto_8

    :cond_15
    if-eq v0, v6, :cond_17

    if-eq v0, v9, :cond_16

    goto :goto_7

    :cond_16
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationPanelViewController;->quickSettingsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v4, v3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    goto :goto_7

    :cond_17
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationPanelViewController;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v3, :cond_18

    invoke-virtual {v3, v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_18
    :goto_7
    if-ne v5, v6, :cond_19

    if-eqz v0, :cond_1a

    :cond_19
    if-nez v5, :cond_1b

    if-ne v0, v6, :cond_1b

    :cond_1a
    iget-object v3, v2, Lcom/android/systemui/shade/SecNotificationPanelViewController;->isTrackingSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "QuickPanelLog"

    const-string v4, "legacyShadeTracking true -> false by force in onStateChanged()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v2, Lcom/android/systemui/shade/SecNotificationPanelViewController;->onTrackingStoppedConsumer:Ljava/util/function/Consumer;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1b
    :goto_8
    if-nez v0, :cond_1c

    iget-boolean v0, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-eqz v0, :cond_1c

    iput-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    :cond_1c
    return-void
.end method
