.class Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 7

    const-string p2, "NotificationSettingsController.UserTracker.Callback.onUserChanged"

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mContentObserver:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;

    invoke-interface {v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$2;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController;->mContentObserver:Lcom/android/systemui/statusbar/notification/row/NotificationSettingsController$1;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6, v4, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
