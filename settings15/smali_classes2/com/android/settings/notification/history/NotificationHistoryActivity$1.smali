.class public final Lcom/android/settings/notification/history/NotificationHistoryActivity$1;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

.field public mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v4, v3, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-interface {v4, v3, v5, v6, v0}, Landroid/app/INotificationManager;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :catch_1
    sget-object v3, Lcom/android/settings/notification/history/NotificationHistoryActivity;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    const-string v3, "NotifHistory"

    const-string v4, "OnPaused called while trying to retrieve notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v3, v3, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    const v4, 0x7f0a0aa3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v6, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v12, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iget-object v7, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v8, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    iget-object v11, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v10, 0x1

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/notification/history/NotificationSbnAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserManager;ZLcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    array-length v6, v2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->onRebuildComplete(Ljava/util/List;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v2, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v2, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iget-object v7, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v8, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    iget-object v11, v7, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v10, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/notification/history/NotificationSbnAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserManager;ZLcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v2, v2, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->onRebuildComplete(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v0, v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v0, v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v0, v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    const/16 p2, 0x12

    const/4 v0, 0x0

    if-ne p3, p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->shouldShowSbn(Landroid/service/notification/StatusBarNotification;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-interface {p3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->shouldShowSbn(Landroid/service/notification/StatusBarNotification;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p2, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mValues:Ljava/util/List;

    invoke-interface {p3, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_1
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    return-void
.end method
