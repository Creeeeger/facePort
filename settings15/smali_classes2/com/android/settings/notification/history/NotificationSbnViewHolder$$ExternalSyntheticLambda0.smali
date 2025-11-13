.class public final synthetic Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

.field public final synthetic f$1:Lcom/android/internal/logging/UiEventLogger;

.field public final synthetic f$10:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/internal/logging/InstanceId;

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/app/PendingIntent;

.field public final synthetic f$8:Z

.field public final synthetic f$9:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationSbnViewHolder;Lcom/android/internal/logging/UiEventLogger;ZILjava/lang/String;Lcom/android/internal/logging/InstanceId;ILandroid/app/PendingIntent;ZLandroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iput-object p2, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/logging/UiEventLogger;

    iput-boolean p3, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$2:Z

    iput p4, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/logging/InstanceId;

    iput p7, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$6:I

    iput-object p8, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$7:Landroid/app/PendingIntent;

    iput-boolean p9, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$8:Z

    iput-object p10, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$9:Landroid/content/Intent;

    iput p11, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$10:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/logging/UiEventLogger;

    iget-boolean v1, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$2:Z

    iget v2, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$3:I

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$5:Lcom/android/internal/logging/InstanceId;

    iget v5, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$6:I

    iget-object v6, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$7:Landroid/app/PendingIntent;

    iget-boolean v7, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$8:Z

    iget-object v8, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$9:Landroid/content/Intent;

    iget p0, p0, Lcom/android/settings/notification/history/NotificationSbnViewHolder$$ExternalSyntheticLambda0;->f$10:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_SNOOZED_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_RECENT_ITEM_CLICK:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceIdAndPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;I)V

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/app/PendingIntent;->send(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v8, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
