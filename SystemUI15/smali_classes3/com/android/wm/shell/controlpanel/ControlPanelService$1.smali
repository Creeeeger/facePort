.class public final Lcom/android/wm/shell/controlpanel/ControlPanelService$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/ControlPanelService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService$1;->this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService$1;->this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;

    iget v0, p1, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigation_bar_gesture_hint"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService$1;->this$0:Lcom/android/wm/shell/controlpanel/ControlPanelService;

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/ControlPanelService;->mFloatingIcon:Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->mOverlayView:Landroid/view/View;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mFloatingIconView:Lcom/android/wm/shell/controlpanel/activity/FloatingIconView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->setAppendLayoutParams()V

    iget-boolean p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mExpandState:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0703cc

    goto :goto_0

    :cond_2
    const p1, 0x7f0703cd

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->getPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FloatingIcon;->mIconSize:I

    :cond_3
    :goto_1
    return-void
.end method
