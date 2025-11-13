.class public final Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;->this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;->this$0:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    const-string v0, "AccessibilityItem"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Updating engine: Successfully bound to the engine: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Updating engine: Failed to bind to engine, reverting."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_1
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
