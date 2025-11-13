.class public Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;
.super Ljava/lang/Object;
.source "IWSpeechRecognizerWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/speech/MMUIRecognizer;
    .locals 3

    const-class v0, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new MMUIRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/speech/MMUIRecognizer;->init()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/speech/MMUIRecognizer;

    invoke-direct {v1}, Lcom/samsung/android/speech/MMUIRecognizer;-><init>()V

    sput-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot load libsasr-jni.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed MMUIRecognizer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/android/speech/IWSpeechRecognizerWrapper;->uniqueInstance:Lcom/samsung/android/speech/MMUIRecognizer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
