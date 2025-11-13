.class Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "SecSoundModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SecSoundModeController;->registerListenersAndObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.RINGER_MODE_CHANGED"

    .line 471
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    .line 472
    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$misInUpdateSoundModeControlsAsync(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 473
    invoke-static {}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    if-eqz p1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->access$000(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "mode_ringer_time_on"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->-$$Nest$mupdateControls(Lcom/samsung/android/settings/as/audio/SecSoundModeController;)V

    :cond_1
    return-void
.end method
