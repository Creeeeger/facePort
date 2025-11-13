.class public final Lcom/android/settings/notification/history/NotificationHistoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/notification/history/NotificationHistoryRecyclerView$OnItemSwipeDeleteListener;


# instance fields
.field public mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;

.field public mNm:Landroid/app/INotificationManager;

.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mValues:Ljava/util/List;


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    check-cast p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mSummary:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;->mTime:Landroid/widget/DateTimeView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/DateTimeView;->setTime(J)V

    new-instance v1, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryAdapter$1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const p0, 0x7f0d04cd

    const/4 p2, 0x0

    invoke-static {p1, p0, p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/history/NotificationHistoryViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final onItemSwipeDeleted(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "NotiHistoryAdapter"

    if-le p1, v0, :cond_0

    const-string v0, "Tried to swipe element out of list: position: "

    const-string v2, " size? "

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationHistory$HistoricalNotification;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mNm:Landroid/app/INotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/app/INotificationManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to delete item"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_DELETE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;

    iget-object v2, v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;->f$1:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;->f$2:Landroid/view/View;

    sget-object v4, Lcom/android/settings/notification/history/NotificationHistoryActivity;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    iget-object v1, v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x7f12002a

    invoke-virtual {v4, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget v2, v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    if-gtz v2, :cond_2

    const v2, 0x7f0a1062

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method
