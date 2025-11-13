.class public final synthetic Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$1:Z

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;

    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel$$ExternalSyntheticLambda10;->f$2:Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLogger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mIsCurrentBroadcastedApp:Z

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_OPEN_BROADCAST_DIALOG:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v1, v5, v0, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->name:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v1, v1, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessButton:Landroid/view/View;

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mBroadcastDialogController:Lcom/android/systemui/bluetooth/BroadcastDialogController;

    iget-object v3, p1, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mBroadcastDialogFactory:Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;

    invoke-interface {v3, p0, v0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate$Factory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/bluetooth/BroadcastDialogDelegate;->createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/android/systemui/bluetooth/BroadcastDialogController;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;->Companion:Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/systemui/animation/DialogTransitionAnimator$Controller$Companion;->fromView(Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogTransitionAnimatorController;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, p0, v0, v2}, Lcom/android/systemui/animation/DialogTransitionAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;Z)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    iget p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v1, v3, p0, v0, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object v5, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessButton:Landroid/view/View;

    iget p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLandroid/view/View;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mInstanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v1, v1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {v1, v5, v0, v3, v4}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;->intent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_8

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v3, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v3, v0, p0}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const-string v3, "MediaControlPanel"

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setInteractive(Z)Landroid/app/BroadcastOptions;

    invoke-virtual {p1, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Device pending intent was canceled"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string p0, "Device pending intent is not an activity."

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    iget-object v5, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mPackageName:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaViewHolder:Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;

    iget-object v7, p0, Lcom/android/systemui/media/controls/ui/view/MediaViewHolder;->seamlessButton:Landroid/view/View;

    iget p0, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mToken:Landroid/media/session/MediaSession$Token;

    iget-object v4, p1, Lcom/android/systemui/media/controls/ui/controller/MediaControlPanel;->mMediaOutputDialogManager:Lcom/android/systemui/media/dialog/MediaOutputDialogManager;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/media/dialog/MediaOutputDialogManager;->createAndShow(Ljava/lang/String;ZLandroid/view/View;Landroid/os/UserHandle;Landroid/media/session/MediaSession$Token;)V

    :goto_0
    return-void
.end method
