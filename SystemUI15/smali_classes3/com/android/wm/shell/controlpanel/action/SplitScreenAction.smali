.class public final Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;
.super Lcom/android/wm/shell/controlpanel/action/MenuActionType;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/controlpanel/action/MenuActionType;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doControlAction(Ljava/lang/String;Lcom/android/wm/shell/controlpanel/GridUIManager;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRunningTaskExcept(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, ""

    invoke-direct {p1, p2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRunningTaskExcept(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/controlpanel/utils/ControlPanelUtils;->getRunningTaskExcept(Landroid/content/Context;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    invoke-static {p1, p2, v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getEdgeAllAppsActivityIntent(Landroid/content/ComponentName;II)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/controlpanel/action/SplitScreenAction;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
