.class public final Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$misInUpdateSoundModeControlsAsync(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->access$000(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "mode_ringer_time_on"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController$3;->this$0:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-static {p0}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->-$$Nest$mupdateControls(Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;)V

    :cond_1
    return-void
.end method
