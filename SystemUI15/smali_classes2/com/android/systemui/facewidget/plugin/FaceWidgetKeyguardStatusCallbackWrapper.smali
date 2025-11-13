.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusCallback;


# instance fields
.field public mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortCutAreaViews()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->getShortCutAreaViews()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDozing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isKeyguardState()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$2()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onMusicItemExpaned(Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMusicItemExpaned() isExpanded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMediaNowBarExpandState:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMusicItemExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockStarManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "onMediaNowBarExpandStateChanged: isExpanded= "

    const-string v3, "LStar|PluginLockStarManager"

    invoke-static {v2, v3, p1}, Lcom/android/settingslib/satellite/SatelliteDialogUtils$requestIsEnabled$2$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, v1, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockStar:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->onMediaNowBarExpandStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onMediaNowBarExpandStateChanged: error = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const-wide/16 v1, 0x96

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onNowBarItemExpanded(Z)V

    :cond_4
    return-void
.end method

.method public final setFullScreenMode(ZJ)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController$10;->setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/shade/NotificationPanelViewController$10;->setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method public final setMusicShown(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setMusicShown() shown = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationPanelView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    :cond_0
    return-void
.end method

.method public final setNowBarExpandMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setNowBarExpandMode() enabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", listener = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mKeyguardBottomArea = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationPanelView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setNowBarExpandMode(Z)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;

    iget-object p3, p2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarExpandMode(Z)V

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/KeyguardSecAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->setNowBarExpandMode(Z)V

    iget-object p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setNowBarExpandMode(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSecQuickSettingsAffordanceInteractor:Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;

    if-eqz p0, :cond_0

    const-string/jumbo p2, "setNowBarExpandMode"

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/shade/domain/interactor/SecQuickSettingsAffordanceInteractor;->hideEffectIfNeeded(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final setNowBarVisibility(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setNowBarVisibility() isVisible = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->setNowBarVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final showOneCardAnimation(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showOneCardAnimation() show = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaViewController:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaViewController;->showShortcutAnimation(Z)V

    :cond_0
    return-void
.end method

.method public final startActivity(Landroid/app/PendingIntent;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZI)V
    .locals 10

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_FACE_WIDGET:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move v4, p2

    move v7, p3

    invoke-interface/range {v1 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public final userActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetKeyguardStatusCallbackWrapper;->mStatusCallback:Lcom/android/systemui/shade/NotificationPanelViewController$10;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$10;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->userActivity()V

    :cond_0
    return-void
.end method
