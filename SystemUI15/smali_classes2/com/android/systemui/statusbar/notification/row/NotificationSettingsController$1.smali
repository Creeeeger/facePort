.class public final Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 8

    const-string v0, "NotificationSettingsController.ContentObserver.onChange"

    const-wide/16 v1, 0x1000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    if-nez p2, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {v3, v4, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5, p2, v0, v3}, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
