.class public final synthetic Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createCheckTTSLanguageDialog - onInit : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AccessibilityDialogUtils"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const-string p1, "tts default voice is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "voice: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    iput-boolean v3, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->shouldShowDialog:Z

    iget-object p1, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p0}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_1
    new-instance p1, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->currentTTSLocale:Ljava/lang/String;

    iget-object p0, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object p0, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_4
    return-void
.end method
