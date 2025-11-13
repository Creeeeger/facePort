.class public final Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BalancePrefController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->-$$Nest$fgetsoundBalancePreviewPlayer(Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController$1;->this$0:Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;->-$$Nest$fgetsoundBalancePreviewPlayer(Lcom/samsung/android/settings/accessibility/hearing/controllers/AbstractSoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/controllers/SoundBalancePreviewPlayer;->pauseMediaPlayer()V

    :cond_1
    return-void
.end method
