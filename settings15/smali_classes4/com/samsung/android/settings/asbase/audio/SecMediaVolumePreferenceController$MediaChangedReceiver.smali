.class public final Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaChangedReceiver is called by : "

    const-string v0, "SecMediaVolumePreCtrl"

    invoke-static {p2, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final register(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SecMediaVolumePreCtrl"

    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.fm.player_lock.status.off"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.fm.player_lock.status.on"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->access$000(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "register MediaChangedReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;->access$100(Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v1, "unregister MediaChangedReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    return-void
.end method
