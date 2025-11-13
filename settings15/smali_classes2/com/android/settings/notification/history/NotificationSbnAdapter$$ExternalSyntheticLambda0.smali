.class public final synthetic Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationSbnAdapter;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationSbnAdapter;Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationSbnViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iput p4, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iget p0, p0, Lcom/android/settings/notification/history/NotificationSbnAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settings/notification/history/NotificationSbnAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method
