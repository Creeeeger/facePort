.class public final Lcom/android/settings/tts/TextToSpeechSettings$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object p1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "TextToSpeechSettings"

    const-string v0, "Error while trying to synthesize sample text"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object p1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object p1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void
.end method

.method public final onStop(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$3;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    sget-object p1, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    return-void
.end method
