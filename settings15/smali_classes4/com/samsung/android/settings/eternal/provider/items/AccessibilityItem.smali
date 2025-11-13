.class public final Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mPreviousEngine:Ljava/lang/String;

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public final mUpdateListener:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;-><init>(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mUpdateListener:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 6

    const-string p0, "AccessibilityItem"

    const-string/jumbo p2, "unknown key : "

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p3}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x10abe11e

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x55a28745

    if-eq v2, v3, :cond_1

    const v3, 0x6ad1f4fe

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "/Settings/Accessibility/Rate"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string v2, "/Settings/Accessibility/PreferredEngine"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_2
    const-string v2, "/Settings/Accessibility/Pitch"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_6

    const/16 v3, 0x64

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string/jumbo p2, "tts_default_pitch"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_5
    const-string/jumbo p2, "tts_default_rate"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V

    goto :goto_3

    :cond_6
    const-string/jumbo p2, "tts_default_synth"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v2, v0, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x10abe11e

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x55a28745

    if-eq v2, v3, :cond_1

    const v3, 0x6ad1f4fe

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "/Settings/Accessibility/Rate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v5

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    const-string v2, "/Settings/Accessibility/PreferredEngine"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_2
    const-string v2, "/Settings/Accessibility/Pitch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_8

    const/16 p0, 0x64

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x19

    if-ge p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move p0, p1

    :goto_2
    const-string/jumbo p1, "tts_default_pitch"

    invoke-static {p4, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_7

    goto :goto_3

    :cond_7
    move p0, p1

    :goto_3
    const-string/jumbo p1, "tts_default_rate"

    invoke-static {p4, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_8
    const-string/jumbo p2, "tts_default_synth"

    invoke-static {p4, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->updateDefaultEngine(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityItem"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized updateDefaultEngine(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "Updating engine : Attempting to connect to engine: "

    const-string v1, "Error shutting down TTS engine"

    monitor-enter p0

    :try_start_0
    const-string v2, "AccessibilityItem"

    const-string v3, "Shutting down current tts engine"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AccessibilityItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "AccessibilityItem"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mUpdateListener:Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;

    invoke-direct {v0, p1, v1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string p1, "AccessibilityItem"

    const-string p2, "Success"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
