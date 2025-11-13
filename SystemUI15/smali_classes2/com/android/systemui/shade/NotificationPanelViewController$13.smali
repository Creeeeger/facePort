.class public final Lcom/android/systemui/shade/NotificationPanelViewController$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingStarted()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->beginJankMonitoring(Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->setExpandedFraction(F)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGlobalLayout: mAnimateAfterExpanding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateAfterExpanding:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$13;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_3

    const-string v0, "onGlobalLayout: NotificationShadeWindowView.isVisibleToUser == false"

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/QuickPanelLogger;->logPanelState(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
