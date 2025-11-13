.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;
.super Lcom/android/wm/shell/controlpanel/audio/AudioCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/audio/AudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaControllerConnected(Landroid/media/session/MediaController;)V
    .locals 1

    const-string v0, "FlexPanelActivity"

    if-nez p1, :cond_0

    const-string p0, "FlexPanelActivity mCallback onMediaControllerConnected mMediaController == null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "FlexPanelActivity mCallback onMediaControllerConnected"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    const-string p1, "FlexPanelActivity"

    const-string v0, "FlexPanelActivity mCallback onMetadataChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    invoke-virtual {p1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkActiveSession()V

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMetadataChanged:Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 5

    const-string p1, "FlexPanelActivity"

    const-string v0, "FlexPanelActivity mCallback onPlaybackStateChanged isSupportButton : "

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    invoke-static {v1}, Lcom/android/wm/shell/controlpanel/utils/CheckControlWindowState;->isSupportButton(Landroid/media/session/MediaController;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVisible : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPad:Lcom/android/wm/shell/controlpanel/activity/TouchPad;

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mIsDisplayTouchPad:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->semIsResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaView:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateMediaPanel()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->updateTouchPadMediaPanel()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "FlexPanelActivity mCallback onPlaybackStateChanged mediaController is null"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 4

    const-string v0, "FlexPanelActivity"

    const-string v1, "FlexPanelActivity mCallback onSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mFlexMediaPanel:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->clearController()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mTouchPadMediaPanel:Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;

    if-eqz v0, :cond_1

    const-string v1, "TouchPadMediaPanel"

    const-string v3, "TouchPadMediaPanel clearController"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iput-object v2, v0, Lcom/android/wm/shell/controlpanel/activity/TouchPadMediaPanel;->mMediaController:Landroid/media/session/MediaController;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$20;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iput-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method
