.class public final synthetic Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    sget v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mEditPanelItemSize:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActiveSessionsChanged closeState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " controllers : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlexPanelActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mCloseState:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->checkActiveSession()V

    :cond_0
    return-void
.end method
