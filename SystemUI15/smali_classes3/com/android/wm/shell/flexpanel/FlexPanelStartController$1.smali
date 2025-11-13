.class public final Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;
.super Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/flexpanel/FlexPanelStartController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishRecentsAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mOnRecentsAnimation:Z

    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->onFlexModeChanged(Z)V

    return-void
.end method

.method public final onStartHomeAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    iget-boolean p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "display_floating_icon_clear"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final onStartRecentsAnimation(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mOnRecentsAnimation:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->mNavBarGestureEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->clearMessages()V

    iget-object p0, p0, Lcom/android/wm/shell/flexpanel/FlexPanelStartController$1;->this$0:Lcom/android/wm/shell/flexpanel/FlexPanelStartController;

    const-string p1, "display_floating_icon_clear"

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/flexpanel/FlexPanelStartController;->startFloatingIcon(Ljava/lang/String;)V

    return-void
.end method

.method public final onWallpaperVisibilityChanged(ZZ)V
    .locals 0

    return-void
.end method
