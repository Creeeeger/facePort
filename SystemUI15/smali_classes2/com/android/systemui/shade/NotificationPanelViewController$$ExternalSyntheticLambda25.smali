.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    return-void
.end method


# virtual methods
.method public final onPanelStateChanged(I)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda25;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/shade/ShadeLogger$logPanelStateChanged$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logPanelStateChanged$2;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string/jumbo v3, "systemui.shade"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/shade/ShadeExpansionStateManagerKt;->panelStateToString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansionEnabledAmbient()V

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelPendingCollapse(Z)V

    :cond_0
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    const/4 v5, 0x0

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    if-eq v1, p1, :cond_1

    invoke-virtual {v0, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    const/16 v1, 0x20

    :try_start_0
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v6, "NotificationPanelView"

    const-string/jumbo v7, "sendAccessibilityEvent failed. on onPanelStateChanged"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mOpenCloseListener:Lcom/android/systemui/shade/ShadeControllerImpl$2;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeControllerImpl$2;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v1, v5}, Lcom/android/systemui/shade/ShadeControllerImpl;->makeExpandedVisible(Z)V

    :cond_2
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->setOnStatusBarDownEvent(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpandImmediate(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_4

    const-string v1, "onPanelStateChanged: STATE_CLOSED"

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMaybeHideExpandedRunnable:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda37;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_5
    iput p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCurrentPanelState:I

    return-void
.end method
