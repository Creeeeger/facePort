.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-object v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flex_mode_panel_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mFlexModePanelEnabled:Z

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$4;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method
