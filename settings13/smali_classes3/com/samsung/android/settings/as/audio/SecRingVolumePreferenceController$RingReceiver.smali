.class Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecRingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;-><init>(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string p2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 221
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Z)V
    .locals 2

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    .line 207
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->access$000(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;->access$100(Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController$RingReceiver;->mRegistered:Z

    return-void
.end method
