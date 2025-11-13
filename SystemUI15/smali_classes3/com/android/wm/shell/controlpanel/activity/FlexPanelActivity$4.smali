.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_accessibility_services"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sput-boolean p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->sTalkbackEnabled:Z

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->isWheelActive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->removeTouchPad(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$4;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-virtual {p0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->displayTouchPadIfNeed()V

    :cond_1
    return-void
.end method
