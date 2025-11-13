.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

.field public final synthetic val$count:[I

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;[ILandroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object p2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    iput-object p3, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sFlexPanelActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "FlexPanelActivity"

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    aget v4, v4, v2

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handler postDelayed mMediaController == null count : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v5, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {v4, v5}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    move-result-object v4

    iput-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$count:[I

    aget v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->val$handler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "handler postDelayed mMediaController != null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCallback:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;

    invoke-virtual {v4, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {v4, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->getMediaController(Landroid/content/Context;Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v4, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {v4, v0}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isMediaPanelRequestedState(Landroid/content/Context;Landroid/media/session/MediaController;)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FlexPanelActivity checkActiveSession isMediaPanel : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-boolean v5, v5, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMediaPanelRequestedState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-boolean v5, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsMediaPanel:Z

    const-string v6, "TouchPadMediaPanel"

    if-eqz v5, :cond_7

    if-eqz v0, :cond_5

    iget-object p0, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz p0, :cond_4

    iget-object v0, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "FlexMediaPanel"

    const-string v2, "MediaPanel setMediaController"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eq v1, v0, :cond_a

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    goto :goto_2

    :cond_4
    iget-object p0, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz p0, :cond_a

    iget-object v0, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "TouchPadMediaPanel setMediaController"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eq v1, v0, :cond_a

    iput-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    goto :goto_2

    :cond_5
    const-string v0, "FlexPanelActivity checkActiveSession MediaFloating no hasActiveSessions"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupBasicPanel()V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_a

    iget-boolean v0, v4, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsEditPanel:Z

    if-nez v0, :cond_a

    const-string v0, "FlexPanelActivity checkActiveSession GridFloating hasActiveSessions"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz v0, :cond_9

    const-string v2, "TouchPadMediaPanel clearController"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v2, :cond_9

    iput-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$13;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->setupMediaPanel()V

    :cond_a
    :goto_2
    return-void
.end method
