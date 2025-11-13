.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isNavBarGestureEnabled()Z

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const-string v0, "display_floating_icon_clear"

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->isNavBarGestureEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mIsNavBarHidden:Z

    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$3;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method
