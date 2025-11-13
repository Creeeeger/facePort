.class Lcom/samsung/android/settings/as/audio/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/as/audio/SoundSettings;->showIntervalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/audio/SoundSettings;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 314
    invoke-static {}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$sfgetmAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMuteInterval()I

    move-result p1

    .line 316
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SoundSettings$1;->this$0:Lcom/samsung/android/settings/as/audio/SoundSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/audio/SoundSettings;->-$$Nest$fgetmSoundModeController(Lcom/samsung/android/settings/as/audio/SoundSettings;)Lcom/samsung/android/settings/as/audio/SecSoundModeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundModeController;->setIntervalTimeCancel(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
