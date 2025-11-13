.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    const v0, 0x1080459

    const v1, 0x1040269

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SinglePressAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    return-void
.end method


# virtual methods
.method public final onLongPress()Z
    .locals 5

    const-string v0, "BugReportAction#requestingFullBugReport"

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0x125

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_BUGREPORT_LONG_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {v1, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v1, "bugreport"

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v1, "GlobalActionsDialogLite"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method public final onPress()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1000

    const-string v2, "bugreport"

    const-string v3, "BugReportAction#onPress"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "GlobalActionsDialogLite"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;)V

    iget p0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogPressDelay:I

    int-to-long v3, p0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showBeforeProvisioning()Z
    .locals 4

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    const-string v3, "bugreport_in_power_menu"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
