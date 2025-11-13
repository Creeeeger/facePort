.class Lcom/android/settings/tts/TextToSpeechSettings$1;
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

    .line 177
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 180
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p1}, Lcom/android/settings/tts/TextToSpeechSettings;->access$000(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_rate"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fputmDefaultRate(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p1}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fgetmDefaultRatePref(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/widget/SeekBarPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$1;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$fgetmDefaultRate(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v0

    .line 183
    invoke-static {p0, v1, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-$$Nest$mgetSeekBarProgressFromValue(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method
