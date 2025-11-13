.class public final synthetic Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/tts/TextToSpeechSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/tts/TextToSpeechSettings;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->successSetup()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    :goto_0
    return-void
.end method
