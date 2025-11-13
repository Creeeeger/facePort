.class public final Lcom/samsung/android/settings/asbase/audio/SoundSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$1;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mSoundModeController:Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/asbase/audio/SecSoundModeController;->setIntervalTimeCancel(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
