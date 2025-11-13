.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer;

    check-cast p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents;

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents;->eventId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onSizeCompatRestartButtonClicked(Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonClicked;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onSizeCompatRestartButtonAppeared(Lcom/android/wm/shell/compatui/impl/CompatUIEvents$SizeCompatRestartButtonAppeared;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Landroid/window/TaskAppearedInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    sget v0, Lcom/android/wm/shell/ShellTaskOrganizer;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget-object v0, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wm/shell/recents/RecentTasksController;->shouldEnableRunningTasksForDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object p1, p1, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "RecentTasksController"

    const-string v0, "Failed call onRunningTaskAppeared"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
