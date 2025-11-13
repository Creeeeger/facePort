.class Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecMediaVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaChangedReceiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;


# direct methods
.method public static synthetic $r8$lambda$VLvjGNYZSbGEoP7ZUXoItLP7n3Y(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->lambda$register$0()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;-><init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V

    return-void
.end method

.method private synthetic lambda$register$0()V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->-$$Nest$msetDualColorSeekBar(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 311
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaChangedReceiver is called by : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecMediaVolumePreCtrl"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public register(Z)V
    .locals 5

    .line 285
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SecMediaVolumePreCtrl"

    if-eqz p1, :cond_1

    .line 287
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    .line 289
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.DOCK_EVENT"

    .line 290
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.fm.player_lock.status.off"

    .line 292
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.fm.player_lock.status.on"

    .line 293
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->access$000(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "register MediaChangedReceiver"

    .line 298
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->this$0:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;->access$100(Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "unregister MediaChangedReceiver"

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController$MediaChangedReceiver;->mRegistered:Z

    return-void
.end method
