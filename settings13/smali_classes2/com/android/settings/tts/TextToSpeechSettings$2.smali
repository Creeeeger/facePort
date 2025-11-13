.class Lcom/android/settings/tts/TextToSpeechSettings$2;
.super Landroid/database/ContentObserver;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 190
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$100(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_pitch"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fputmDefaultPitch(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p1}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fgetmDefaultPitchPref(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/widget/SeekBarPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$2;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fgetmDefaultPitch(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v0

    .line 193
    invoke-static {p0, v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$mgetSeekBarProgressFromValue(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method
