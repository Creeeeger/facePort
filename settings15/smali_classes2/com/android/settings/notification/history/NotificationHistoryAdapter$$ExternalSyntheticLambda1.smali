.class public final synthetic Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

.field public final synthetic f$1:Landroid/app/NotificationHistory$HistoricalNotification;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    iput p3, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    iget v1, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryAdapter$$ExternalSyntheticLambda1;->f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OLDER_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.provider.extra.CONVERSATION_ID"

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
