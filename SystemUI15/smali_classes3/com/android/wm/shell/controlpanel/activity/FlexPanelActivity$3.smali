.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "flex_mode_panel_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$3;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    new-instance v0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
