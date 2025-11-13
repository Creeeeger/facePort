.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->initializationTime:J

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const-class v1, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setOnKeyguard(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsController:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->BUBBLES_SETTING_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsListener:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "NotificationSettingsController.addCallback"

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mView:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$4;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController$3;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsController:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->BUBBLES_SETTING_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowController;->mSettingsListener:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "NotificationSettingsController.removeCallback"

    const-wide/16 v2, 0x1000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
