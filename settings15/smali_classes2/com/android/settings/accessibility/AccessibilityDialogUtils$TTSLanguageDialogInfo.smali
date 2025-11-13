.class public final Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public currentTTSLocale:Ljava/lang/String;

.field public shouldShowDialog:Z

.field public textToSpeech:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->shouldShowDialog:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->currentTTSLocale:Ljava/lang/String;

    iget p2, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;Landroid/content/Context;)V

    invoke-direct {p2, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$TTSLanguageDialogInfo;->textToSpeech:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method
