.class public final Lcom/android/settingslib/notification/EnableZenModeDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/notification/EnableZenModeDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog;->mZenRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->getConditionTagAt(I)Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v0, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v0}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result p2

    const-string v0, "EnableZenModeDialog"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    iget-object p2, p2, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x4eb

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isAlarm(Landroid/service/notification/Condition;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    iget-object p2, p2, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ed

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isCountdown(Landroid/service/notification/Condition;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p2, Lcom/android/settingslib/notification/EnableZenModeDialog;->mMetricsLogger:Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;

    iget-object p2, p2, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ec

    invoke-static {p2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid manual condition: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_4
    :goto_1
    invoke-virtual {p2, v2, v1, v0, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/notification/EnableZenModeDialog$1;->this$0:Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object p2, p0, Lcom/android/settingslib/notification/EnableZenModeDialog;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p1, Lcom/android/settingslib/notification/EnableZenModeDialog$ConditionTag;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->isForever(Landroid/service/notification/Condition;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_7
    :goto_2
    invoke-virtual {p2, v2, v1, v0}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_3
    return-void
.end method
