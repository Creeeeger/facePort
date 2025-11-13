.class public final Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mControlRef:Ljava/lang/ref/WeakReference;

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mControlRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final register(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mControlRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;->access$000(Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/asbase/audio/SecRingVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method
