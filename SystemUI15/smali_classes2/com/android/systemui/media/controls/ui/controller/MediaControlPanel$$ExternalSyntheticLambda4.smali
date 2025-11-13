.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Landroid/app/PendingIntent;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$1:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewController:Lcom/android/systemui/media/controls/ui/controller/MediaViewController;

    iget-boolean v1, v1, Lcom/android/systemui/media/controls/ui/controller/MediaViewController;->isGutsVisible:Z

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v5, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v5, v5, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v6, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v5, v6, v1, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    const/4 v1, 0x0

    const/16 v3, 0x2f8

    invoke-virtual {p1, v3, v1, v1}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->logSmartspaceCardReported(III)V

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(ILandroid/app/PendingIntent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pending intent for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaControlPanel"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->player:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "MediaControlPanel"

    const-string v2, "Skipping player animation as it is not attached to a ViewGroup"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$3;-><init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Landroid/view/View;Ljava/lang/Integer;)V

    move-object p0, v1

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :goto_1
    return-void
.end method
