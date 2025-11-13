.class public final Lcom/android/settings/tts/TextToSpeechViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mApplication:Landroid/app/Application;

.field public mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mApplication:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechViewModel;->mTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method
