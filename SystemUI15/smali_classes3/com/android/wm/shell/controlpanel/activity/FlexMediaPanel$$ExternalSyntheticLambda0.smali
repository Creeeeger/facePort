.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    iget-boolean v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekBarEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->updateSeekbarPosition()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mPlaybackState:Landroid/media/session/PlaybackState;

    const-string v1, "FlexMediaPanel"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const-string v0, "MediaPanel mUpdateTimer PlaybackState.STATE_PLAYING"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->checkPlaybackPosition(J)V

    goto :goto_0

    :cond_1
    const-string v0, "MediaPanel mUpdateTimer else"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mHandler:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mUpdateTimer:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
