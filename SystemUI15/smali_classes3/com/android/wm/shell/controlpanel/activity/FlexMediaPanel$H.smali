.class public final Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel$H;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopupType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mSeekPosition:J

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexMediaPanel;->mMediaPanelPopup:Lcom/android/wm/shell/controlpanel/activity/MediaPanelPopup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FloatingUI;->removeView()V

    :cond_1
    :goto_0
    return-void
.end method
