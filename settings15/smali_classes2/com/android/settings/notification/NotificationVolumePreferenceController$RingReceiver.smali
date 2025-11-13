.class public final Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    move-result-object p0

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final register(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->access$000(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->this$0:Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->access$100(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method
