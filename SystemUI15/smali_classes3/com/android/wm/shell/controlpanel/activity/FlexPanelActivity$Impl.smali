.class public final Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;
.super Landroid/app/TaskStackListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFocusChanged(IZ)V
    .locals 3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object p1, p1, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mActivityManager:Landroid/app/ActivityManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->semIsFreeform()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    if-ne p2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.wm.shell.controlpanel.activity.FlexPanelActivity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    iget-object v2, v2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;->mOwnActivity:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    invoke-static {v2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRunningTaskExcept(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isKeepFlexPanelTask(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;->this$0:Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity;

    new-instance p2, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/controlpanel/activity/FlexPanelActivity$Impl;I)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method
