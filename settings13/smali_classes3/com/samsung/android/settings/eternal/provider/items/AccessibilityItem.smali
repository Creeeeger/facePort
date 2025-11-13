.class public Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;
.super Ljava/lang/Object;
.source "AccessibilityItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static bridge synthetic -$$Nest$monUpdateEngine(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->onUpdateEngine(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AccessibilityItem"

    .line 40
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 189
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem$1;-><init>(Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 53
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method private onUpdateEngine(I)V
    .locals 3

    const-string v0, "AccessibilityItem"

    if-nez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_2

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 206
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Updating engine: Failed to bind to engine, reverting."

    .line 209
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 213
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 215
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized updateDefaultEngine(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mPreviousEngine:Ljava/lang/String;

    const-string v0, "AccessibilityItem"

    const-string v1, "Shutting down current tts engine"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 170
    :try_start_1
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AccessibilityItem"

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v0, "AccessibilityItem"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, p1, v1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string p1, "AccessibilityItem"

    const-string p2, "Success"

    .line 182
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 6

    const-string p0, "AccessibilityItem"

    .line 63
    new-instance p3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 67
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

    move-result v2

    if-eqz v2, :cond_3

    move v0, v5

    goto :goto_0

    :cond_1
    const-string v2, "/Settings/Accessibility/PreferredEngine"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "/Settings/Accessibility/Pitch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v4

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    const/16 v2, 0x64

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown key : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p2, "tts_default_pitch"

    .line 79
    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_1

    :cond_5
    const-string p2, "tts_default_rate"

    .line 74
    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_1

    :cond_6
    const-string p2, "tts_default_synth"

    .line 69
    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p3
.end method

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 7

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    .line 126
    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 127
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 128
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x10abe11e

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x55a28745

    if-eq v3, v4, :cond_1

    const v4, 0x6ad1f4fe

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "/Settings/Accessibility/Rate"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v1, v6

    goto :goto_0

    :cond_1
    const-string v3, "/Settings/Accessibility/PreferredEngine"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v3, "/Settings/Accessibility/Pitch"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v1, v5

    :cond_3
    :goto_0
    if-eqz v1, :cond_8

    const/16 p0, 0x64

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_4

    goto :goto_3

    .line 148
    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x19

    if-ge p1, p2, :cond_5

    goto :goto_1

    :cond_5
    move p0, p1

    :goto_1
    const-string p1, "tts_default_pitch"

    .line 152
    invoke-static {p4, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 140
    :cond_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_7

    goto :goto_2

    :cond_7
    move p0, p1

    :goto_2
    const-string p1, "tts_default_rate"

    .line 144
    invoke-static {p4, p1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    const-string p2, "tts_default_synth"

    .line 133
    invoke-static {p4, p2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz p3, :cond_9

    .line 134
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 135
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;->updateDefaultEngine(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityItem"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_9
    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0
.end method
